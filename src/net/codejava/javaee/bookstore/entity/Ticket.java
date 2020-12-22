package net.codejava.javaee.bookstore.entity;


import java.util.Random;

public class Ticket {
	public static int MAX_NUMBERS = 5;
	public static int MAX_VALUE_IN_NUMBERS = 5;

	int id;
	Lottery lottery;
	int[] numbers;

	public Ticket(int id, Lottery lottery, int[] numbers) {
		super();
		this.id = id;
		this.lottery = lottery;
		this.numbers = numbers;
	}

	public Ticket(int id, Lottery lottery) {
		super();
		this.id = id;
		this.lottery = lottery;
		numbers = new int[MAX_NUMBERS];
		for (int i = 0; i < numbers.length; i++)
			numbers[i] = new Random().nextInt(MAX_VALUE_IN_NUMBERS);
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

}
