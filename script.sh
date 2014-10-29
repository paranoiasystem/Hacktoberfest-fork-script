#! /bin/bash

n=339007

function_commit() {
	while [[ true ]]; do
		echo $n > for_a_free_t-shirt
		git add .
		git commit -m "I have made $n commit for a free t-shirt"
		((n++))
	done
}

function_push(){
	while [[ true ]]; do
		sleep 10
		git push origin master
	done
}

function_commit &

function_push &
