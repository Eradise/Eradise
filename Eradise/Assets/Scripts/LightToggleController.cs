using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightToggleController : MonoBehaviour {

	// public variables
	public GameObject m_playerLight;			// Instance for player light
	public Material skybox;
	public Material blackSkybox;

	// private variables

	// ------------------------------------
	// Use this for initialization
	// ------------------------------------
	void Start () {
		if (m_playerLight != null) {
			m_playerLight.SetActive(false);
		}

		skybox = RenderSettings.skybox;
	}

	// ------------------------------------
	// Methods
	// ------------------------------------
	void OnTriggerStay(Collider col) {
		// If colliding with the player
		if (col.tag == "Player"	&&	m_playerLight != null) {
			RenderSettings.skybox = blackSkybox;
			RenderSettings.ambientIntensity = 0;
			RenderSettings.sun.intensity = 0.01f;
			RenderSettings.reflectionIntensity = 0;
			m_playerLight.SetActive(true);
		}
	}

	void OnTriggerExit(Collider col) {
		// If colliding with the player
		if (col.tag == "Player"	&&	m_playerLight != null) {
			m_playerLight.SetActive(false);
			RenderSettings.skybox = skybox;
			RenderSettings.ambientIntensity = 1;
			RenderSettings.sun.intensity = 1;
			RenderSettings.reflectionIntensity = 1;
		}
	}

}
