using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Walk : MonoBehaviour {

	private Animator anim;
	private float vert;

	void Start () {
		anim = GetComponent<Animator>();
	}
	
	void Update () {
		vert = Input.GetAxis("Vertical");
		anim.SetFloat("walk", vert);
	}
}
