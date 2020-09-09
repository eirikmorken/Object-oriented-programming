package interfaces.twitter;

import java.util.Comparator;

import interfaces.twitter.TwitterAccount;
public class UserNameComparator implements Comparator<TwitterAccount>{
	
	public UserNameComparator(){
		
	}
	
	@Override
	public int compare(TwitterAccount o1, TwitterAccount o2) {
		return o1.getUserName().compareTo(o2.getUserName());
	}

}
