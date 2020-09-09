<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="TwitterComparison">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the UserNameComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.twitter.UserNameComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the FollowersCountComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.twitter.FollowersCountComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TweetsCountComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.twitter.TweetsCountComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the UserNameComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.twitter.UserNameComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the FollowersCountComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.twitter.FollowersCountComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the UserNameComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.twitter.UserNameComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TwitterAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.twitter.TwitterAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the FollowersCountComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.twitter.FollowersCountComparatorTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the UserNameComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.twitter.UserNameComparatorTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TweetsCountComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.twitter.TweetsCountComparatorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.twitter.*" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488360973153" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces.twitter;&#xA;&#xA;public class UserNameComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361346352" sizeMeasure="5" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Comparator&lt;TwitterAccount>" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="61" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="74" charEnd="84" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="85" charEnd="99" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361418354" sizeMeasure="13" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class UserNameComparator implements Comparator&lt;TwitterAccount>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(TwitterAccount o1, TwitterAccount o2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="29" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="169" charEnd="183" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="188" charEnd="202" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="76" charEnd="94" severity="2" problemCategory="50" problemType="67109264"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="117" charEnd="131" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361551279" sizeMeasure="15">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import objectstructures.TwitterAccount" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="59" end="-202"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361681774" sizeMeasure="19">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public UserNameComparator(){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="171" end="-128"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488367272805" sizeMeasure="19" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(o1.username.compareTo)" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="284" end="-20"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="304" charEnd="312" severity="2" problemCategory="50" problemType="33554502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488368054833" sizeMeasure="18">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return o1.getUserName().compareTo(o2.getUserName())" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="284" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488370254290" sizeMeasure="17">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter.TwitterAccount;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="66" end="-245"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361008714" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces.twitter;&#xA;&#xA;public class FollowersCountComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361348405" sizeMeasure="8" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Comparator&lt;TwitterAccount>{&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="67" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="80" charEnd="90" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="91" charEnd="105" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361416366" sizeMeasure="16" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class FollowersCountComparator implements Comparator&lt;TwitterAccount>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(TwitterAccount o1, TwitterAccount o2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="29" end="-11"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="76" charEnd="100" severity="2" problemCategory="50" problemType="67109264"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="123" charEnd="137" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="175" charEnd="189" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="194" charEnd="208" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361555323" sizeMeasure="18">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import objectstructures.TwitterAccount" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="59" end="-214"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361749307" sizeMeasure="21">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public FollowersCountComparator(){&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="177" end="-134"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488363580470" sizeMeasure="21" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(o1.)" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="294" end="-26"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="310" charEnd="313" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="312" charEnd="313" severity="2" problemCategory="20" problemType="1610612967"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="310" charEnd="312" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488363953939" sizeMeasure="22" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getFollowerCount()>o2.getFollowerCount()){&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;}else if(o1.getFollowerCount()&lt;o2.getFollowerCount()){&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="300" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="386" charEnd="402" severity="2" problemCategory="50" problemType="67108964"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="408" charEnd="424" severity="2" problemCategory="50" problemType="67108964"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="313" charEnd="329" severity="2" problemCategory="50" problemType="67108964"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="335" charEnd="351" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488370230912" sizeMeasure="21">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter.TwitterAccount;" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="66" end="-351"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361042124" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces.twitter;&#xA;&#xA;public class TweetsCountComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361350775" sizeMeasure="5" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Comparator&lt;TwitterAccount>" edit="/1/@proposals.0/@proposals.2/@attempts.0/@edit" start="64" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="77" charEnd="87" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="88" charEnd="102" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361413763" sizeMeasure="13" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class TweetsCountComparator implements Comparator&lt;TwitterAccount>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(TwitterAccount o1, TwitterAccount o2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.1/@edit" start="29" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="172" charEnd="186" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="191" charEnd="205" severity="2" problemCategory="40" problemType="16777218"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="76" charEnd="97" severity="2" problemCategory="50" problemType="67109264"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="120" charEnd="134" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361557823" sizeMeasure="16">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import objectstructures.TwitterAccount;&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.2/@edit" start="59" end="-204"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488361746972" sizeMeasure="20">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public TweetsCountComparator(){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.3/@edit" start="175" end="-128"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488363193820" sizeMeasure="24">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(o1.getTweetCount()>o2.getRetweetCount()){&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;}else if(o1.getTweetCount()&lt;o2.getTweetCount()){&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.4/@edit" start="291" end="-20"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488370233382" sizeMeasure="24">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter" edit="/1/@proposals.0/@proposals.2/@attempts.5/@edit" start="66" end="-355"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488370425711" sizeMeasure="22">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.2/@attempts.6/@edit" start="101" end="-337"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488370459497" sizeMeasure="22">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class TweetsCountComparator implements Comparator&lt;TwitterAccount>{&#xA;&#x9;&#xA;&#x9;public TweetsCountComparator(){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int compare(TwitterAccount o1, TwitterAccount o2) {&#xA;&#x9;&#x9;if(o1.getTweetCount()>o2.getT" edit="/1/@proposals.0/@proposals.2/@attempts.7/@edit" start="101" end="-115"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a" completion="0.5">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488369626633" completion="0.0" errorCount="1">
          <errorTests>initializationError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370481371" completion="0.6666666666666666" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370631858" completion="0.6666666666666666" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370640728" completion="0.6666666666666666" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370966213" completion="0.6666666666666666" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370988538" completion="0.6666666666666666" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488371941015" completion="0.6666666666666666" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488372134805" completion="0.5" successCount="3" failureCount="1" errorCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
          <errorTests>testUnfollow</errorTests>
          <errorTests>testFollow</errorTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488369610515" completion="0.0" errorCount="1">
          <errorTests>initializationError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370028924" completion="0.0" errorCount="1">
          <errorTests>testCompare</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370051097" completion="0.0" errorCount="1">
          <errorTests>testCompare</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370301776" completion="1.0" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370395397" completion="1.0" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488369635412" completion="0.0" errorCount="1">
          <errorTests>initializationError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370474379" completion="1.0" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488369620548" completion="0.0" errorCount="1">
          <errorTests>initializationError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370310332" completion="0.0" failureCount="1">
          <failureTests>testCompare</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370403347" completion="0.0" failureCount="1">
          <failureTests>testCompare</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488370466845" completion="1.0" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a" performedCount="4">
        <attempts timestamp="1488543951824"/>
        <attempts timestamp="1488544019025"/>
        <attempts timestamp="1488544028045"/>
        <attempts timestamp="1488544127915"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
