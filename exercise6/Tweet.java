package interfaces.twitter;



public class Tweet {
	
	String text;
	TwitterAccount main_account;
	Tweet originalTweet;
	int reTweetcount;
	
	public Tweet(TwitterAccount account, String text){
		this.text=text;
		this.main_account=account;
		originalTweet=this;
		reTweetcount=0;
	}	
	
	public Tweet(TwitterAccount account, Tweet reTweet){
		if(account==reTweet.originalTweet.getOwner()){
			throw new IllegalArgumentException("Cannot retweet own tweet.");
		}
		this.originalTweet=reTweet.originalTweet;
		originalTweet.reTweetcount++;
		this.main_account=account;
		this.text=reTweet.text;
		originalTweet.getOwner().countRetweets ++;
	}
	
	public String getText(){
		return text;
	}
	public TwitterAccount getOwner(){
		return main_account;
	}
	public int getRetweetCount(){
		return originalTweet.reTweetcount;
	}
	public Tweet getOriginalTweet(){
		if (originalTweet==this){
			return null;
		}
		return originalTweet;
	}

	public static void main(String[] args) {
		

	}

}
