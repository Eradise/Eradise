using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

	//parameters
	public float maxSpeed = 6.0f;
	public float runSpeed = 40.0f;
	private float distanceToGround;
	private float rotationDegreesPerSecond = 600f;
	private Animator anim;

	//states
	public bool running = false;
	public bool stoppedRunning = false;
	public bool walking = true;
	public bool idle = false;

	public float moveDown = -1f;

	//components
	private Rigidbody rb;
	private Transform camera;

	void Start() {
		Cursor.lockState = CursorLockMode.Locked;
		Cursor.visible = false;

		anim = GetComponent<Animator>();
		camera = GameObject.Find("Camera").GetComponent<Transform>();
		rb = GetComponent<Rigidbody>();
		distanceToGround = GetComponent<Collider>().bounds.extents.y + 0.001f;
	}

	void Update() {
		if (Input.GetKey("escape")) {
			Application.Quit();
		}
	}

	void FixedUpdate() {
		rb.velocity = new Vector3(rb.velocity.x, moveDown, rb.velocity.z);

		//gets input
		float horizontal = 0f;
		float vertical = 0f;
		if (Mathf.Abs(Input.GetAxis("Horizontal")) > 0.1f) horizontal = Input.GetAxis("Horizontal");
		if (Mathf.Abs(Input.GetAxis("Vertical")) > 0.1f) vertical = Input.GetAxis("Vertical");

		//creates a vector direction from the inputs
		Vector3 direction = new Vector3(horizontal, 0.0f, vertical);

		//if there's an input from the player
		if (horizontal != 0f || vertical != 0f) {

			Transform newDir = camera;
			newDir.Rotate(Vector3.left, camera.localRotation.eulerAngles.x);

			direction = newDir.TransformDirection(direction);
			direction.y = 0.0f;

			//normalize input
			if (direction.magnitude > 1 || direction.magnitude < -1) direction = Vector3.Normalize(direction);

			//rotates the character so it faces the same orientation as the vector direction
			transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.LookRotation(direction), rotationDegreesPerSecond * Time.deltaTime);

			//move character
			anim.SetFloat("walk", direction.magnitude);

			//move cloth forward
			if (direction.magnitude > 0.7f) {
				GetComponent<CapsuleCollider>().center = new Vector3(0, 1, 0.2f);
				GetComponent<CapsuleCollider>().height = 1.8f;
				GameObject.Find("Player/Cloth").transform.localPosition = new Vector3(-0.03f, -0.1f, 0.25f);
			} else {
				GetComponent<CapsuleCollider>().center = new Vector3(0, 1, 0);
				GetComponent<CapsuleCollider>().height = 2f;
				GameObject.Find("Player/Cloth").transform.localPosition = new Vector3(-0.03f, 0, 0.02f);
			}
		} else {
			rb.velocity = new Vector3(0, rb.velocity.y, 0);
		}
	}

	//linear map
	float Remap(float val, float min1, float max1, float min2, float max2) {
		return (val - min1) / (max1 - min1) * (max2 - min2) + min2;
	}

	//check if the player is grounded
	bool CheckIfGrounded() {
		return Physics.Raycast(new Vector3(transform.position.x, transform.position.y - 0.04f, transform.position.z), -Vector3.up, 0.5f);
	}
}