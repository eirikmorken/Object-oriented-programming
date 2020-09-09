package interfaces.twitter;

import java.util.Comparator;

import interfaces.twitter.TwitterAccount;
public class TweetsCountComparator implements Comparator<TwitterAccount>{
	
	public TweetsCountComparator(){
		
	}
	
	@Override
	public int compare(TwitterAccount o1, TwitterAccount o2) {
		if(o1.getTweetCount()>o2.getTweetCount()){
			return -1;
		}else if(o1.getTweetCount()<o2.getTweetCount()){
			return 1;
		}
		return 0;
	}

}
