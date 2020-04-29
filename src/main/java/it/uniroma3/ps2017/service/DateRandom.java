package it.uniroma3.ps2017.service;

public class DateRandom {

	public static void main(String[] args) {
		for(int i=0;i<50;i++) {
			System.out.printf("%d\n", (int) (Math.random()*50+1960));
			System.out.printf("%dx%d\n\n", (int) (Math.random()*30+80), (int) (Math.random()*30+50));
		}
	}

}
