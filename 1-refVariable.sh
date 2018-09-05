#!/bin/bash

x=apple
echo $x

fun(){
	echo ${1}
	echo ${!1}
}

fun x
fun $x

