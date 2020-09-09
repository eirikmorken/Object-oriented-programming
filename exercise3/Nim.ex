<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Nim">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Nim class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Nim"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Nim JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.NimTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485949190721" sizeMeasure="87">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Nim {&#xA;&#x9;&#xA;&#x9;int pile0;&#xA;&#x9;int pile1;&#xA;&#x9;int pile2;&#xA;&#x9;&#xA;&#x9;public Nim (int pileSize){&#xA;&#x9;&#x9;if (! start_amount(pileSize)){&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal pilenumber entry&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.pile0 = pileSize;&#xA;&#x9;&#x9;this.pile1 = pileSize;&#xA;&#x9;&#x9;this.pile2 = pileSize;&#xA;&#x9;}&#xA;&#x9;public Nim (){&#xA;&#x9;&#x9;pile0 = pile1 = pile2 = 10;&#xA;&#x9;}&#xA;&#x9;boolean start_amount(int pileSize){&#xA;&#x9;&#x9;if (pileSize&lt;0){&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}return true;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;void removePieces(int number,int targetPile){&#xA;&#x9;&#x9;if (! isValidMove(number,targetPile)){&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal move.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==0){&#xA;&#x9;&#x9;&#x9;pile0-=number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==1){&#xA;&#x9;&#x9;&#x9;pile1-=number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==2){&#xA;&#x9;&#x9;&#x9;pile2-=number;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;boolean isValidMove(int number,int targetPile){&#xA;&#x9;&#x9;if (targetPile!=0 &amp;&amp; targetPile!=1 &amp;&amp; targetPile!=2){&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (number&lt;1){&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==0){&#xA;&#x9;&#x9;&#x9;if (number>pile0){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==1){&#xA;&#x9;&#x9;&#x9;if (number>pile1){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==2){&#xA;&#x9;&#x9;&#x9;if (number>pile2){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return true;&#xA;&#x9;}&#xA;&#x9;boolean isGameOver(){&#xA;&#x9;&#x9;if (pile0==0||pile1==0||pile2==0){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}return false;&#xA;&#x9;}&#xA;&#x9;int getPile(int targetPile){&#xA;&#x9;&#x9;if (targetPile==0){&#xA;&#x9;&#x9;&#x9;return pile0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==1){&#xA;&#x9;&#x9;&#x9;return pile1;&#xA;&#x9;&#x9;}return pile2;&#xA;&#x9;}&#xA;&#x9;public String toString(){&#xA;&#x9;&#x9;return String.valueOf(&quot;Pile0:&quot;+getPile(0)+&quot;Pile1:&quot;+getPile(1)+&quot;Pile2:&quot;+getPile(2));&#xA;&#x9;}&#xA;&#x9;&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485949945046" sizeMeasure="89">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="format(&quot;Pile0: %d,Pile1: %d, Pile2: %d&quot;, 10,20,30);&#xA;&#x9;&#x9;//return String.valueOf(&quot;Pile0:&quot;+getPile(0)+&quot;Pile1:&quot;+getPile(1)+&quot;Pile2:&quot;+getPile(2));&#xA;&#x9;}&#xA;&#x9;&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Nim test =  new Nim(5);&#xA;&#x9;&#x9;System.out.println(test);" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="1386" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485950186676" sizeMeasure="94">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;if (isGameOver()){&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Game over&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;boolean isValidMove(int number,int targetPile){&#xA;&#x9;&#x9;if (targetPile!=0 &amp;&amp; targetPile!=1 &amp;&amp; targetPile!=2){&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (number&lt;1){&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==0){&#xA;&#x9;&#x9;&#x9;if (number>pile0){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==1){&#xA;&#x9;&#x9;&#x9;if (number>pile1){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==2){&#xA;&#x9;&#x9;&#x9;if (number>pile2){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (isGameOver()){&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return true;&#xA;&#x9;}&#xA;&#x9;boolean isGameOver(){&#xA;&#x9;&#x9;if (pile0==0||pile1==0||pile2==0){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}return false;&#xA;&#x9;}&#xA;&#x9;int getPile(int targetPile){&#xA;&#x9;&#x9;if (targetPile==0){&#xA;&#x9;&#x9;&#x9;return pile0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==1){&#xA;&#x9;&#x9;&#x9;return pile1;&#xA;&#x9;&#x9;}return pile2;&#xA;&#x9;}&#xA;&#x9;public String toString(){&#xA;&#x9;&#x9;return String.format(&quot;Pile0: %d,Pile1: %d, Pile2: %d&quot;, getPile(0),getPile(1)," edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="718" end="-123"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485950360394" sizeMeasure="95">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="isGameOver()){&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Game over&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (! isValidMove(number,targetPile)){&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal move.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==0){&#xA;&#x9;&#x9;&#x9;pile0-=number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==1){&#xA;&#x9;&#x9;&#x9;pile1-=number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (targetPile==2){&#xA;&#x9;&#x9;&#x9;pile2-=number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="490" end="-898"/>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485949264218" completion="0.5" successCount="2" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485950187705" completion="0.5" successCount="2" errorCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485950260567" completion="0.5" successCount="2" errorCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485950368752" completion="1.0" successCount="4"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a" performedCount="20">
        <attempts timestamp="1485952541330"/>
        <attempts timestamp="1485952623147"/>
        <attempts timestamp="1485952658995"/>
        <attempts timestamp="1485952668336"/>
        <attempts timestamp="1485952687173"/>
        <attempts timestamp="1485952696997"/>
        <attempts timestamp="1485952870506"/>
        <attempts timestamp="1485952877630"/>
        <attempts timestamp="1485952877630"/>
        <attempts timestamp="1485952906738"/>
        <attempts timestamp="1485952909052"/>
        <attempts timestamp="1485952909052"/>
        <attempts timestamp="1485952916023"/>
        <attempts timestamp="1485952916023"/>
        <attempts timestamp="1485952948186"/>
        <attempts timestamp="1485952948186"/>
        <attempts timestamp="1485952956105"/>
        <attempts timestamp="1485952956105"/>
        <attempts timestamp="1485952997237"/>
        <attempts timestamp="1485953003214"/>
        <attempts timestamp="1485953020859"/>
        <attempts timestamp="1485953065618"/>
        <attempts timestamp="1485953084804"/>
        <attempts timestamp="1485953238289"/>
        <attempts timestamp="1485953245654"/>
        <attempts timestamp="1485953268601"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a" performedCount="1">
        <attempts timestamp="1485952711007"/>
        <attempts timestamp="1485953048874"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" performedCount="2">
        <attempts timestamp="1485952572349"/>
        <attempts timestamp="1485952705628"/>
        <attempts timestamp="1485952916007"/>
        <attempts timestamp="1485953039259"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a" performedCount="6">
        <attempts timestamp="1485944480575"/>
        <attempts timestamp="1485949196972"/>
        <attempts timestamp="1485952062591"/>
        <attempts timestamp="1485952499177"/>
        <attempts timestamp="1485952646778"/>
        <attempts timestamp="1485952664487"/>
        <attempts timestamp="1485953097761"/>
        <attempts timestamp="1485953148884"/>
        <attempts timestamp="1485953155647"/>
        <attempts timestamp="1485953261640"/>
        <attempts timestamp="1485953280446"/>
        <attempts timestamp="1485953336764"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
