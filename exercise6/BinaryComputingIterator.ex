<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="BinaryComputingIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the BinaryComputingIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.BinaryComputingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the BinaryComputingIterator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.BinaryComputingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the BinaryComputingIteratorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.BinaryComputingIteratorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.BinaryComputingIterator" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488309994537" sizeMeasure="35" errorCount="2">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class BinaryComputingIterator implements Iterator&lt;Double>{&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;BinaryOperator.apply(iterator1,iterator2);&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="533" charEnd="542" severity="2" problemCategory="50" problemType="33554515"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="543" charEnd="552" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488311319164" sizeMeasure="43">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Iterator&lt;Double> iterator1_g;&#xA;&#x9;Iterator&lt;Double> iterator2_g;&#xA;&#x9;BinaryOperator&lt;Double> operator_g;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;this.operator_g=operator;&#xA;&#x9;&#x9;this.iterator1_g=iterator1;&#xA;&#x9;&#x9;this.iterator2_g=iterator2;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,Double default1,Double default2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;if(iterator1_g.hasNext()&amp;&amp;iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}else if (iterator1_g.hasNext()&amp;&amp;!iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;return operator_g.apply(iterator1_g.next(),iterator2_g.next())" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="158" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488311455194" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Double default1;&#xA;&#x9;Double default2;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;this.operator_g=operator;&#xA;&#x9;&#x9;this.iterator1_g=iterator1;&#xA;&#x9;&#x9;this.iterator2_g=iterator2;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,Double default1,Double default2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;this.operator_g=operator;&#xA;&#x9;&#x9;this.iterator1_g=iterator1;&#xA;&#x9;&#x9;this.iterator2_g=iterator2;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;if(iterator1_g.hasNext()&amp;&amp;iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}else if (iterator1_g.hasNext()&amp;&amp;!iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}else if (iterator2_g.hasNext()&amp;&amp;!iterator1" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="256" end="-151"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488311522013" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="_g;&#xA;&#x9;Double default2_g;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;this.operator_g=operator;&#xA;&#x9;&#x9;this.iterator1_g=iterator1;&#xA;&#x9;&#x9;this.iterator2_g=iterator2;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1,Iterator&lt;Double> iterator2,Double default1,Double default2,BinaryOperator&lt;Double>operator){&#xA;&#x9;&#x9;this.operator_g=operator;&#xA;&#x9;&#x9;this.iterator1_g=iterator1;&#xA;&#x9;&#x9;this.iterator2_g=iterator2;&#xA;&#x9;&#x9;this.default1_g=default1;&#xA;&#x9;&#x9;this.default2_g=default" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="271" end="-468"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488311738800" sizeMeasure="44">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="809" end="-372"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488312368726" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;if(iterator1_g.hasNext()&amp;&amp;iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}else if (iterator1_g.hasNext()&amp;&amp;!iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}else if (iterator2_g.hasNext()&amp;&amp;!iterator1_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;if(iterator1_g.hasNext()&amp;&amp;!iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return operator_g.apply(iterator1_g.next(), default2_g);&#xA;&#x9;&#x9;}else if (iterator2_g.hasNext()&amp;&amp;!iterator1_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return operator_g.apply(default1_g, iterator2_g.next());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return operator_g.apply(iterator1_g.next(),iterator2_g.next());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="811" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488312795901" sizeMeasure="55">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (default2_g==null){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}else if (iterator2_g.hasNext()&amp;&amp;!iterator1_g.hasNext()){&#xA;&#x9;&#x9;&#x9;if(default1_g==null){&#xA;&#x9;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="980" end="-310"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488312977547" sizeMeasure="56">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if((!iterator1_g.hasNext())&amp;&amp;!iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}else " edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1227" end="-307"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488313037684" sizeMeasure="56">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*if((!iterator1_g.hasNext())&amp;&amp;!iterator2_g.hasNext()){&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}else*/" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1227" end="-308"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488312371135" completion="0.8333333333333334" successCount="5" failureCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <failureTests>testComputeResultsWithShortIterator</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488312978895" completion="1.0" successCount="6">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488313038927" completion="1.0" successCount="6">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
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
