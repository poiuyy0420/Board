package mvc.control;

public class ActionForward {
	private String url; //가야할 페이지 명
	private boolean redirect; // true=redirect, false=forward
	
	
	public ActionForward(String url, boolean redirect) {
		this.url = url;
		this.redirect = redirect;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
	

}
