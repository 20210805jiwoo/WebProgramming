package pro03;
import java.util.ArrayList;
import java.util.List;

public class LectureManager {	
	ArrayList<LectureBean> lectureList = new ArrayList<LectureBean>();
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix = new int[times][days];
	private int[][] titleMatrix = new int[times][days];
	private int[][] spanMatrix = new int[times][days];
	

	public static void printMatrix(int[][] matrix) {
		for(int i=0; i<times; i++) {
			for(int j=0; j<days; j++)
				System.out.printf("%2d ", matrix[i][j]);
			System.out.println();
		}
	}
	public void buildMatrix() {
		for(int i=0; i<times; i++)
			for(int j=0; j<days; j++) {
				typeMatrix[i][j] = 0;
				titleMatrix[i][j] = -1;
				spanMatrix[i][j] = 1;	
			}
		
		for(int i=0; i<lectureList.size(); i++) {
			typeMatrix[lectureList.get(i).getTime()-1][lectureList.get(i).getDay()] = lectureList.get(i).getType();
			titleMatrix[lectureList.get(i).getTime()-1][lectureList.get(i).getDay()] = lectureList.get(i).getTitle();
			spanMatrix[lectureList.get(i).getTime()-1][lectureList.get(i).getDay()] = lectureList.get(i).getConsecutive();
			for(int j=1; j<lectureList.get(i).getConsecutive(); j++) {
				spanMatrix[lectureList.get(i).getTime() + j -1][lectureList.get(i).getDay()] = 0;
			}
		}
		
		System.out.println("typeMatrix\n");
		printMatrix(typeMatrix);
		System.out.println("\ntitleMatrix\n");
		printMatrix(titleMatrix);
		System.out.println("\nspanMatrix\n");
		printMatrix(spanMatrix);
	}
	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}
	public List<LectureBean> getLectureList(){
		return lectureList;
	}
	public int[][] getTypeMatrix() {
		return typeMatrix;
	}
	public void setTypeMatrix(int[][] typeMatrix) {
		this.typeMatrix = typeMatrix;
	}
	public int[][] getTitleMatrix() {
		return titleMatrix;
	}
	public void setTitleMatrix(int[][] titleMatrix) {
		this.titleMatrix = titleMatrix;
	}
	public int[][] getSpanMatrix() {
		return spanMatrix;
	}
	public void setSpanMatrix(int[][] spanMatrix) {
		this.spanMatrix = spanMatrix;
	}
	
}