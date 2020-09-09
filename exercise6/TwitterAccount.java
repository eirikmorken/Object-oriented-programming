package interfaces.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;



public class TwitterAccount{

	String userName;
	ArrayList<TwitterAccount> following;
	ArrayList<Tweet> tweets;
	ArrayList<TwitterAccount> followed;
	int countRetweets;
	
	public TwitterAccount(String newUser){
		this.userName=newUser;
		following = new ArrayList<>();
		tweets = new ArrayList<>();
		followed = new ArrayList<>();
		countRetweets = 0;
	}
	public String getUserName(){
		return userName;
	}
	
	public void follow(TwitterAccount account){
		if (isFollowing(account)){
			throw new IllegalArgumentException("You are already following this person.");
		}
		following.add(account);
		account.followed.add(this);
	}
	
	public void unfollow(TwitterAccount account){
		if (! isFollowing(account)){
			return;//throw new IllegalArgumentException("You can't unfollow this account, because you're not following it.");
		}
		following.remove(account);
		account.followed.remove(this);
	}
	
	public boolean isFollowing(TwitterAccount account){
		if (following.contains(account)){
			return true;
		}return false;
	}
	
	public boolean isFollowedBy(TwitterAccount account){
		if(account.isFollowing(this)){
			return true;
		}return false;
	}
	
	public void tweet(String text){
		tweets.add(new Tweet(this,text));
	}
	
	public void retweet(Tweet reTweet){
		//new Tweet(this,reTweet);
		tweets.add(new Tweet(this,reTweet));
	}
	
	public Tweet getTweet(int plassering){
		return tweets.get(tweets.size()-plassering);
	}
	
	public int getTweetCount(){
		return tweets.size();
	}
	public int getFollowerCount(){
		return followed.size();
	}
	
	public int getRetweetCount(){
		return countRetweets;
	}
	
	public ArrayList<TwitterAccount> getFollowers(Comparator<TwitterAccount> o1){
		ArrayList<TwitterAccount> newList = new ArrayList<>(followed);
		Collections.sort(newList, o1);
		return newList;
	}
	
	public static void main(String[] args) {
		TwitterAccount ta1 = new TwitterAccount("TA1");
		TwitterAccount ta2 = new TwitterAccount("TA2");
		ta1.follow(ta2);
	}


}
