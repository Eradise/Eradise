using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightToggleController : MonoBehaviour {

	// public variables
	public GameObject m_playerLight;			// Instance for player light

	// private variables

	// ------------------------------------
	// Use this for initialization
	// ------------------------------------
	void Start () {
		if (m_playerLight != null) {
			m_playerLight.SetActive(false);
		}
	}

	// ------------------------------------
	// Methods
	// ------------------------------------
	void OnTriggerStay(Collider col) {
		// If colliding with the player
		if (col.tag == "Player"	&&	m_playerLight != null) {
			m_playerLight.SetActive(true);
		}
	}

	void OnTriggerExit(Collider col) {
		// If colliding with the player
		if (col.tag == "Player"	&&	m_playerLight != null) {
			m_playerLight.SetActive(false);
		}
	}

}
