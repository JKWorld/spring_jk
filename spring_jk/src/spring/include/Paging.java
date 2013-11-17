
package spring.include;

public class Paging {
    private boolean isPrePage;//이전으로 갈수 있는지를 구별하는 변수
    private boolean isNextPage;
    private int nowPage;
    private int rowTotal;
    private int blockList;
    private int blockPage;
    private int totalPage;
    private int startPage;
    private int endPage;
    private int startRow;//현재 페이지의 첫 게시물 번호(index)
    private int endRow;
    
    //마지막으로 jsp에 표현할 HTML코드를 저장할 객체
    private StringBuffer sb;

    public Paging(int nowPage, int rowTotal, int blockList, int blockPage){ //페이지를 계산하는 생성자
        //각 플레그를 초기화
        isPrePage = false;
        isNextPage = false;

        //입력도니 전체 게시물의 수를 통해 전체 페이지 수를 구한다.
        // blockList가 7일 경우 총 게시물 수가 14라면.. 총 페이지는 2다
        // 총 게시물이 13이어도 2가 되어야 한다.
//        this.totalPage = rowTotal/blockList;
//        if((rowTotal%blockList) != 0)
//            totalPage++;
          totalPage = (int) Math.ceil((double)rowTotal/(double)blockList);

          //현재 페이지가 전체 페이지 수보다 크다면 전체 페이지수로
          //강제 조정한다.
          if(nowPage > totalPage)
              nowPage = totalPage;

          // 현재 페이지에 따라
          // 시작 게시물의 index와 마지막 게시물의 index구하기
          startRow = (nowPage - 1) * blockList;
          endRow = startRow + blockList - 1;

          //현재 페이지에 따라
          // 시작 페이지와 마지막 페이지 구하기
          startPage = (int)((nowPage-1) / blockPage) * blockPage +1;
          endPage = startPage + blockPage - 1;

          //위와 같은 연산을 하다보면 마지막 페이지 값이
          //전체 페이지보다 큰 경우가 생긴다.
          if(endPage > totalPage)
              endPage = totalPage;

          //시작 페이지가 1보다 클 경우 이전 페이징이 가능하도록 설정
          if(startPage > 1)
              isPrePage = true;

          //마지막 페이지가 전체페이지 보다 작다면 다음 페이징 기능을
          //하도록 설정
          if(endPage < totalPage)
              isNextPage = true;

          //---- 기본 값들 설정 끝 -----------------------------------------
          setNowPage(nowPage);
          setRowTotal(rowTotal);
          setBlockList(blockList);
          setBlockPage(blockPage);

          sb = new StringBuffer();
          //이제 표현할 HTML코드를 만들어서 sb에 저장!!
          if(startPage < blockPage)
              sb.append("<img src='images/button/but_prev.gif'>");
          else{
              // 이전 기능 수행!!
              sb.append("<img src='images/button/but_prev.gif' onclick='javascript:location.href=\"list.inc?nowPage=");
              sb.append(nowPage - blockPage);
              sb.append("\"' style='cursor:pointer'>");
          }
          sb.append("|");
          //페이지 번호 넣기
          for(int i=startPage ; i<=endPage ; i++){
              if(i>totalPage)//페이지 번호가 전체 페이지 수보다 클때
                  break;     // 반복문 탈출!!

              if( i == nowPage){ //현재 페이지 번호는 조금 다르게 표현!
                  sb.append("&nbsp;<b><font color='#91B7EF'>");
                  sb.append(i);
                  sb.append("</font></b>");
              }else{
                  sb.append("&nbsp;<a href='list.inc?nowPage=");
                  sb.append(i);
                  sb.append("'>");
                  sb.append(i); //표현되는 값
                  sb.append("</a>");
              }
          }//end for
          sb.append("&nbsp;|");
          if(endPage >= totalPage)
              sb.append("<img src='images/button/but_next.gif'>");
          else{
              // 이전 기능 수행!!
              sb.append("<img src='images/button/but_next.gif' onclick='javascript:location.href=\"list.hb?nowPage=");
              sb.append(nowPage + blockPage);
              sb.append("\"' style='cursor:hand'>");
          }
    }

    public int getBlockList() {
        return blockList;
    }

    public void setBlockList(int blockList) {
        this.blockList = blockList;
    }

    public int getBlockPage() {
        return blockPage;
    }

    public void setBlockPage(int blockPage) {
        this.blockPage = blockPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public int getEndRow() {
        return endRow;
    }

    public void setEndRow(int endRow) {
        this.endRow = endRow;
    }

    public boolean isIsNextPage() {
        return isNextPage;
    }

    public void setIsNextPage(boolean isNextPage) {
        this.isNextPage = isNextPage;
    }

    public boolean isIsPrePage() {
        return isPrePage;
    }

    public void setIsPrePage(boolean isPrePage) {
        this.isPrePage = isPrePage;
    }

    public int getNowPage() {
        return nowPage;
    }

    public void setNowPage(int nowPage) {
        this.nowPage = nowPage;
    }

    public int getRowTotal() {
        return rowTotal;
    }

    public void setRowTotal(int rowTotal) {
        this.rowTotal = rowTotal;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getStartRow() {
        return startRow;
    }

    public void setStartRow(int startRow) {
        this.startRow = startRow;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public StringBuffer getSb() {
        return sb;
    }
}









