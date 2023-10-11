package pr34;

public class Calculator {
	private int op1;
	private int op2;
	private String operator;

	public int getOp1() {
		return op1;
	}

	public void setOp1(int op1) {
		this.op1 = op1;
	}

	public int getOp2() {
		return op2;
	}

	public void setOp2(int op2) {
		this.op2 = op2;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public int calc() {
		int result = 0;
		switch (operator) {
		case "+":
			result = op1 + op2;
			break;
		case "-":
			result = op1 - op2;
			break;
		case "-*":
			result = op1 * op2;
			break;
		case "/":
			result = op1 / op2;
			break;
		}
		return result;
	}
}
