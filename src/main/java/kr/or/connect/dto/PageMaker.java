package kr.or.connect.dto;

public class PageMaker {
	private Criteria criteria;	// Criteria.java에 설정된 옵션 값을 저장하기 위한 변수
	private int totalCount; 	// 전체 데이터 개수
	private int startPage;		// 시작하는 페이지 번호
	private int endPage;		// 끝나는 페이지 번호
	private boolean prev;		// 이전 링크 여부
	private boolean next;		// 다음 링크 여부
	private int displayPageNum = 5;	//페이지 번호 출력 개수
	
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	private void calcData() {    
		// Math.ceil 함수는 올림을 해주는 함수
		endPage = (int)(Math.ceil(criteria.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = endPage-displayPageNum + 1;	// 시작 페이지 번호
		prev = startPage==1? false:true;	// 이전 페이지 링크 여부
		int pagesu = (int)(Math.ceil(totalCount/(double)criteria.getPerPageNum()));
		if(endPage > pagesu) {
			endPage = pagesu;
		}
		next = endPage * criteria.getPerPageNum() >= totalCount ? false : true;
		       
    }
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public Criteria getCriteria() {
		return criteria;
	}
	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}
	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startpage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", criteria=" + criteria + "]";
	}	
}
