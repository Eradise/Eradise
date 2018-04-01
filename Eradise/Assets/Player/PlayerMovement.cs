using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

	//parameters
	public float maxSpeed = 6.0f;
	public float runSpeed = 40.0f;
	private float distanceToGround;
	private float rotationDegreesPerSecond = 600f;

	//states
	public bool running = false;
	public bool stoppedRunning = false;
	public bool walking = true;
	public bool idle = false;

	//components
	private Rigidbody rb;
	private Transform camera;

	void Start() {
		camera = GameObject.Find("Camera").GetComponent<Transform>();
		rb = GetComponent<Rigidbody>();
		distanceToGround = GetComponent<Collider>().bounds.extents.y + 0.1f;
	}

	//handle running
	void Update() {
		if (!stoppedRunning) {
			if (Input.GetAxis("RightTrigger") > 0.2f || Input.GetKey(KeyCode.LeftShift)) {
				if (!running) {
					resetState();
					running = true;
				}
			} else if (running) {
				resetState();
				stoppedRunning = true;
				StartCoroutine("StoppedRunning");
			}
		}
	}

	void FixedUpdate() {
		if (!stoppedRunning) {
			//gets input
			float horizontal = 0f;
			float vertical = 0f;
			if (Mathf.Abs(Input.GetAxis("Horizontal")) > 0.1f) horizontal = Input.GetAxis("Horizontal");
			if (Mathf.Abs(Input.GetAxis("Vertical")) > 0.1f) vertical = Input.GetAxis("Vertical");

			//creates a vector direction from the inputs
			Vector3 direction = new Vector3(horizontal, 0.0f, vertical);

			//if there's an input from the player
			if (horizontal != 0f || vertical != 0f) {

				if (!running) {
					resetState();
					walking = true;
				}

				Transform newDir = camera;
				newDir.Rotate(Vector3.left, camera.localRotation.eulerAngles.x);

				direction = newDir.TransformDirection(direction);
				direction.y = 0.0f;

				//normalize input
				if (direction.magnitude > 1 || direction.magnitude < -1) direction = Vector3.Normalize(direction);

				//map max speed to input intensity
				float localMaxSpeed;

				if (running) localMaxSpeed = Remap(direction.magnitude / 1f, 0f, 1f, 0f, runSpeed);
				else localMaxSpeed = Remap(direction.magnitude / 1f, 0f, 1f, 0f, maxSpeed);

				//if (!running && rb.velocity.magnitude > localMaxSpeed) rb.velocity = Vector3.Normalize(rb.velocity) * localMaxSpeed * 2;

				//rotates the character so it faces the same orientation as the vector direction
				transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.LookRotation(direction), rotationDegreesPerSecond * Time.deltaTime);

				//keep Y magnitude so as to not affect jump physics with speed clamp
				float yMag = rb.velocity.y;

				//moves the character towards vector direction
				//speed limited by default as a result of normalized movement vector and localMaxSpeed multiplier
				Vector2 movement = new Vector2(rb.velocity.x, rb.velocity.z);
				Vector2 newMove = new Vector2(direction.x * localMaxSpeed, direction.z * localMaxSpeed);
				if (newMove.magnitude > movement.magnitude) {
					if (CheckIfGrounded()) movement = newMove;
					else movement = Vector2.Lerp(movement, newMove, 0.07f);
				}

				rb.velocity = new Vector3(movement.x, yMag, movement.y);
			} else {
				resetState();
				idle = true;
			}
		}
	}

	//linear map
	float Remap(float val, float min1, float max1, float min2, float max2) {
		return (val - min1) / (max1 - min1) * (max2 - min2) + min2;
	}

	//check if the player is grounded
	bool CheckIfGrounded() {
		return Physics.Raycast(transform.position, -Vector3.up, distanceToGround);
	}

	void resetState() {
		idle = false;
		running = false;
		stoppedRunning = false;
		walking = false;
	}

	//change velocity temporarily for slowdown
	IEnumerator StoppedRunning() {
		rb.velocity = new Vector3(0.0f, 0.0f, 0.0f);
		yield return new WaitForSeconds(0.5f);
		resetState();
		idle = true;
	}
}