package logic;

public class NewRegisterLogic {
	public static int getSexNumber(String sex) {
		int sexNumber;
		switch (sex) {
		case "man":
			sexNumber = 1;
			break;
		case "woman":
			sexNumber = 2;
			break;
		default:
			sexNumber = 0;
			break;
		}
		return sexNumber;
	}

}
