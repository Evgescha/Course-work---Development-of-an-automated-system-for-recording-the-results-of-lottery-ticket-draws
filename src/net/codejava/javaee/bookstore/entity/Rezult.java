package net.codejava.javaee.bookstore.entity;


public class Rezult {

	int id;
	Lottery lottery;
	int[] numbers;
	Ticket winner;
	public Rezult(int id, Lottery lottery, int[] numbers, Ticket winner) {
		super();
		this.id = id;
		this.lottery = lottery;
		this.numbers = numbers;
		this.winner = winner;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Lottery getLottery() {
		return lottery;
	}
	public void setLottery(Lottery lottery) {
		this.lottery = lottery;
	}
	public int[] getNumbers() {
		return numbers;
	}
	public void setNumbers(int[] numbers) {
		this.numbers = numbers;
	}
	public Ticket getWinner() {
		return winner;
	}
	public void setWinner(Ticket winner) {
		this.winner = winner;
	}
	
}
