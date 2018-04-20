using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class elevatorController : MonoBehaviour {

	// public variables
	public bool m_goingDown = true;			// Bool to check the direction of the elevator
	public GameObject m_invisibleBarrier;	// The invisible barrier fo the elevator while in movement
	public Transform m_topFloorPos;			// Top floor position
	public Transform m_undergroundFloor;	// Bottom Floor position

	// private variables
	private bool m_moving = false;			// If the elevator is in movement
	private bool m_transition = false;		// Animation in the update
	private float m_journeyLengthTop;		// Distance value
	private float m_journeyLengthBottom;	// Distance value
	private float m_speed = 15.0F;			// Speed of the elevator
	private float m_startTime;				// When the animation begins

	// ------------------------------------
	// Use this for initialization
	// ------------------------------------
	void Start () {
		// Disable the invisible wall
		m_invisibleBarrier.SetActive(false);
		// Start at the top
		transform.position = m_topFloorPos.position;
		// Distance between two points
		m_journeyLengthTop = Vector3.Distance(m_topFloorPos.position, m_undergroundFloor.position);
		m_journeyLengthBottom = Vector3.Distance(m_undergroundFloor.position, m_topFloorPos.position);
	}

	// ------------------------------------
	// Update is called once per frame
	// ------------------------------------
	void Update () {

		//move player Y position according to elevator
		if (m_transition && m_moving && m_goingDown) {
			GameObject.Find("Player").transform.position = new Vector3(GameObject.Find("Player").transform.position.x, transform.position.y-3.2f, GameObject.Find("Player").transform.position.z);
		}

		// Transition animation
		if (m_transition) {
		
			// Check the direction
			if (m_goingDown) {
				float distCovered = (Time.time - m_startTime) * m_speed;
      			float fracJourney = distCovered / m_journeyLengthTop;
				transform.position = Vector3.Lerp(m_topFloorPos.position, m_undergroundFloor.position, fracJourney);
				// Arrived!
				//Debug.Log("Frac : " + fracJourney);
				if (fracJourney >= 1) {
					m_invisibleBarrier.SetActive(false);
					m_transition = false;
				}
			}

			// Check the direction and start moving
			if (!m_goingDown) {
				float distCovered = (Time.time - m_startTime) * m_speed;
      			float fracJourney = distCovered / m_journeyLengthBottom;
				transform.position = Vector3.Lerp(m_undergroundFloor.position, m_topFloorPos.position, fracJourney);
				// Arrived!
				if (fracJourney >= 1) {
					m_invisibleBarrier.SetActive(false);
					m_goingDown = !m_goingDown;
					m_transition = false;
				}
			}
		}
	}

	// ------------------------------------
	// Methods
	// ------------------------------------
	void OnTriggerEnter(Collider col) {
		// If the player enters the elevator
		if (col.tag == "Player" && !m_moving) {
			m_moving = true;
			StartCoroutine("changeFloor");
		}
	}

	IEnumerator changeFloor () {
		m_invisibleBarrier.SetActive(true);
		yield return new WaitForSeconds(2);
		// StartTransition
		m_startTime = Time.time;
		m_transition = true;
	}

	void OnTriggerExit(Collider col) {
		// If the player exits the elevator
		if (col.tag == "Player" && m_moving && !m_transition) {
			m_moving = false;
			m_goingDown = !m_goingDown;
		}
	}

}
