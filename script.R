EVIROMENT <- c(1:9)
turn <- 0

print_eviroment <- function(eviroment) {
	for (i in 1:9) {
		if(i%%3==0) {
			cat(' ', eviroment[i],' ','\n')
		}else {
			cat(' ', eviroment[i],' ')
		}
	}
}

close_game <- function() {
}

while (T) {
	if (turn == 0) {
		print("----------------player 1------------------")
		print_eviroment(EVIROMENT)
		print("----------------------------------------")
		set_position = as.numeric(readline("check local [X]: "))
		EVIROMENT[set_position] = 'X'
		turn <- 1
	}
	else {
		print("----------------player 2------------------")
		print_eviroment(EVIROMENT)
		print("----------------------------------------")
		set_position = as.numeric(readline("check local [O]: "))
		EVIROMENT[set_position] = 'O'
		turn <- 0
	}
}

