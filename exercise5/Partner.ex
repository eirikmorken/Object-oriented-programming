<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Partner">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Partner class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Partner"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Partner class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Partner"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PartnerTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.PartnerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Partner" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487699030629" sizeMeasure="15" warningCount="1">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Partner {&#xA;&#x9;&#xA;&#x9;String navn;&#xA;&#x9;Partner partner;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner();&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="11" charStart="152" charEnd="154" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487699619189" sizeMeasure="32" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public Partner(Partner partner){&#xA;&#x9;&#x9;this.navn=navn;&#xA;&#x9;&#x9;this.partner=partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName(){&#xA;&#x9;&#x9;return navn;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner(){&#xA;&#x9;&#x9;if (partner==null){&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void setPartner(){&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="87" end="-83"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="130" charEnd="144" severity="1" problemCategory="90" problemType="536871090"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="434" charEnd="447" severity="2" problemCategory="50" problemType="134217858"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487701357819" sizeMeasure="44" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String navn,Partner partner){&#xA;&#x9;&#x9;this.navn=navn;&#xA;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;partner.partner=this;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName(){&#xA;&#x9;&#x9;return navn;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner(){&#xA;&#x9;&#x9;if (partner==null){&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void setPartner(Partner partner){&#xA;&#x9;&#x9;if (partner==null){&#xA;&#x9;&#x9;&#x9;this.partner.partner=null;&#xA;&#x9;&#x9;&#x9;this.partner=null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(partner.partner==null &amp;&amp; this.partner==null){&#xA;&#x9;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;&#x9;partner.partner=this;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if()&#xA;&#x9;}&#xA;&#x9;public String toString" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="102" end="-92"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="34" charStart="618" charEnd="625" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="34" charStart="623" charEnd="625" severity="2" problemCategory="20" problemType="1610612976"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="36" charStart="648" charEnd="658" severity="2" problemCategory="50" problemType="603979884"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="40" charStart="727" charEnd="740" severity="2" problemCategory="50" problemType="134217858"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487702167916" sizeMeasure="54" errorCount="5">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="partner.partner==null &amp;&amp; this.partner!=null){&#xA;&#x9;&#x9;&#x9;this.partner.partner=null;&#xA;&#x9;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;&#x9;partner.partner=this;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(partner.partner!=null &amp;&amp; this.partner!=null){&#xA;&#x9;&#x9;&#x9;this.partner.partner=null;&#xA;&#x9;&#x9;&#x9;partner.partner.partner=null;&#xA;&#x9;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;&#x9;partner.partner=this;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public String toString(){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner(String navn,Partner partner" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="593" end="-13"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="50" charStart="1050" charEnd="1056" severity="2" problemCategory="50" problemType="33554515"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="50" charStart="1057" charEnd="1061" severity="2" problemCategory="20" problemType="1610612968"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="50" charStart="1062" charEnd="1069" severity="2" problemCategory="50" problemType="33554515"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="50" charStart="1070" charEnd="1077" severity="2" problemCategory="20" problemType="1610612968"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="959" charEnd="969" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487702673454" sizeMeasure="53" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="){&#xA;&#x9;&#x9;this.navn=navn;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName(){&#xA;&#x9;&#x9;return navn;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner(){&#xA;&#x9;&#x9;if (partner==null){&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void setPartner(Partner partner){&#xA;&#x9;&#x9;if (partner==null){&#xA;&#x9;&#x9;&#x9;this.partner.partner=null;&#xA;&#x9;&#x9;&#x9;this.partner=null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(partner.partner==null &amp;&amp; this.partner==null){&#xA;&#x9;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;&#x9;partner.partner=this;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(partner.partner==null &amp;&amp; this.partner!=null){&#xA;&#x9;&#x9;&#x9;this.partner.partner=null;&#xA;&#x9;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;&#x9;partner.partner=this;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(partner.partner!=null &amp;&amp; this.partner!=null){&#xA;&#x9;&#x9;&#x9;this.partner.partner=null;&#xA;&#x9;&#x9;&#x9;partner.partner.partner=null;&#xA;&#x9;&#x9;&#x9;this.partner=partner;&#xA;&#x9;&#x9;&#x9;partner.partner=this;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public String toString(){&#xA;&#x9;&#x9;String outStr=&quot;Navn:&quot;+navn+&quot;\nPartner:&quot;+String.valueOf(partner);&#xA;&#x9;&#x9;return outStr;&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner(&quot;Mordi&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="113" end="-13"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="49" charStart="1049" charEnd="1051" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487702893100" sizeMeasure="55">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Partner p2 = new Partner(&quot;lolsibob&quot;);&#xA;&#x9;&#x9;p1.setPartner(p2);&#xA;&#x9;&#x9;p1.toString();" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1030" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487703062464" sizeMeasure="60" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(partner==null){&#xA;&#x9;&#x9;&#x9;String outStr=&quot;Navn;&quot;+navn+&quot;\nPartner; ingenPartner&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;String outStr=&quot;Navn:&quot;+navn+&quot;\nPartner:&quot;+String.valueOf(partner);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="864" end="-185"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="51" charStart="1083" charEnd="1089" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487703252318" sizeMeasure="62">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String outStr;&#xA;&#x9;&#x9;if(partner==null){&#xA;&#x9;&#x9;&#x9;outStr=&quot;Navn;&quot;+navn+&quot;\nPartner; ingenPartner&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;outStr=&quot;Navn:&quot;+navn+&quot;\nPartner:&quot;+partner.navn;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return outStr;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="864" end="-165"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487703333355" sizeMeasure="63">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ystem.out.println(&quot;Hei&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="865" end="-341"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487703357793" sizeMeasure="64">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;String outStr;&#xA;&#x9;&#x9;if(partner==null){&#xA;&#x9;&#x9;&#x9;outStr=&quot;Navn;&quot;+navn+&quot;\nPartner; ingenPartner&quot;;&#xA;&#x9;&#x9;&#x9;System.out.println(&quot;Hei&quot;)" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="864" end="-254"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487703379551" sizeMeasure="65">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;outStr=&quot;Navn:&quot;+navn+&quot;\nPartner:&quot;+partner.navn;&#xA;&#x9;&#x9;&#x9;System.out.println(&quot;Hei&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="955" end="-187"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487703459767" sizeMeasure="65">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(p1" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1216" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487707935004" sizeMeasure="66">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="836" end="-413"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487702893032" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487703251902" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487703280107" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487703333192" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487703357640" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487703379436" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1487703459651" mode="run"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1487703508415" completion="1.0" successCount="4">
          <successTests>testPartner</successTests>
          <successTests>testDivorce</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testSwinger</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
