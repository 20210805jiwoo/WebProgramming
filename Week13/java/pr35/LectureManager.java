package pr35;

import java.util.ArrayList;
import java.util.List;

public class LectureManager {
	List<LectureBean> lectureList = new ArrayList<LectureBean>();

	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}

	public List<LectureBean> getLetureList() {
		return lectureList;
	}

}