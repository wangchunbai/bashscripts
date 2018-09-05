#!/bin/bash

x=2
letters=(apple pear banana)

fun(){
	echo ${1}
	echo ${!1}
}

fun x

fun $x



