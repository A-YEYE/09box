package kr.or.connect.dto;

public class Criteria {
	private int page;		// 현재 페이지 번호
	private int perPageNum;	// 한 페이지당 보여줄 게시글의 갯수
	private int pageStart;	/* 현재 페이지에서 출력될 데이터의 시작 번호.
							      이 데이터는 page와 perPageNum이 결정되면 자동으로 결정 */
	
	public Criteria() {
		this.page = 1;
		this.perPageNum = 9;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <=0 ) {
			this.page = 1;
		}else {
			this.page = page;
		}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if(pageCount != cnt) {
			this.perPageNum = cnt;
		}else {
			this.perPageNum = pageCount;
		}
	}

	public int getPageStart() {
		pageStart = (page-1)*perPageNum;
		return pageStart;
	}

//	public void setPageStart(int pageStart) {
//		this.pageStart = pageStart;
//	}

	@Override
	public String toString() {
		return "Paging [page=" + page + ", perPageNum=" + perPageNum + ", pageStart=" + pageStart + "]";
	}
}
