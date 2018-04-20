using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[AddComponentMenu("Camera-Control/Mouse Orbit with zoom")]
public class CameraRotation : MonoBehaviour {

	public Transform target;
    
    public float xSpeed = 660.0f;
    public float ySpeed = 480.0f;
    public float zSpeed = 5.0f;
 
    public float yMinLimit = -30f;
    public float yMaxLimit = 80f;

    private int distanceCounter = 1;
    private float setDistance = 6f;
    private float targetDistance = 6f;
    private float[] distances;
 
    private Rigidbody rigidbody;
 
    float x = 0.0f;
    float y = 0.0f;
 
    void Start ()  {
    	distances = new float[4];
    	distances[0] = 4f;
    	distances[1] = 6f;
    	distances[2] = 9f;
    	distances[3] = 12f;

        Vector3 angles = transform.eulerAngles;
        x = angles.y;
        y = angles.x;
 
        rigidbody = GetComponent<Rigidbody>();
 
        if (rigidbody != null) {
            rigidbody.freezeRotation = true;
        }

        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    void Update() {
    	//change zoom distance
    	if(Input.GetButtonDown("RightStickClick") || Input.GetMouseButtonDown(0)) {
    		distanceCounter++;
    		if (distanceCounter == distances.Length) distanceCounter = 0;

    		setDistance = distances[distanceCounter];
    	}

    	if (targetDistance != setDistance) targetDistance =  Mathf.Lerp(targetDistance, setDistance, 2.0f * Time.deltaTime);
    }
 
    void LateUpdate () {
        if (target) {
            //controller input
        	if (Mathf.Abs(Input.GetAxis("RightStickX")) > 0.02) x += Input.GetAxis("RightStickX") * xSpeed * 0.02f;
            if (Mathf.Abs(Input.GetAxis("RightStickY")) > 0.02)  y += Input.GetAxis("RightStickY") * ySpeed * 0.02f;

            //mouse input
            x += Input.GetAxis("Mouse X") * xSpeed * 0.02f;
            y -= Input.GetAxis("Mouse Y") * ySpeed * 0.02f;
 
            y = ClampAngle(y, yMinLimit, yMaxLimit);
 
            Quaternion rotation = Quaternion.Euler(y, x, 0);
 
            float distance = targetDistance;
 
            RaycastHit hit;
            if (Physics.Linecast (target.position, transform.position, out hit)) {
                //move camera forward when colliding - needs to be reworked
                //distance -= hit.distance;
            }

            Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
            Vector3 position = rotation * negDistance + target.position + new Vector3(0.0f, 1.0f, 0.0f);
 
            transform.rotation = rotation;
            transform.position = position;
        }
    }
 
    public static float ClampAngle(float angle, float min, float max) {
        if (angle < -360F)
            angle += 360F;
        if (angle > 360F)
            angle -= 360F;
        return Mathf.Clamp(angle, min, max);
    }
}