<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9fc15975-88da-4695-88bb-9a9876df48ba(com.mbeddr.demo.robot.motorBoard)">
  <persistence version="9" />
  <languages>
    <use id="0d04a6cc-773e-4069-b9b0-11884b2ff1c8" name="com.mbeddr.ext.units" version="-1" />
    <use id="3828799d-97c8-48d0-af8b-39b903457e1e" name="mbeddr.arduino.registers" version="-1" />
    <use id="3c4c8461-a533-4459-916a-dc0176793b4c" name="mbeddr.arduino.core" version="-1" />
    <use id="e562f51e-6403-4857-b773-44632077c67d" name="mbeddr.arduino.interrupts" version="0" />
    <use id="b879012d-402b-40e0-8df7-e6fa93b9b711" name="com.mbeddr.ext.concurrency" version="0" />
    <use id="3f445ef3-54ad-4ae5-a22d-91c3ce06375e" name="com.mbeddr.ext.components.concurrency" version="0" />
    <use id="d6943f81-8340-4661-9d57-8fc1e2d23b36" name="com.mbeddr.ext.concurrency.plainC" version="0" />
    <use id="13a36f90-83c5-4bf6-9dd6-70e455f1ef36" name="com.mbeddr.ext.components.statemachine" version="0" />
    <use id="e3420481-604b-464e-bc1b-06ecfc1f9dfc" name="com.mbeddr.ext.components.units" version="0" />
    <generationPart ref="efda956e-491e-4f00-ba14-36af2f213ecf(com.mbeddr.core.udt)" />
    <devkit ref="24565007-e59f-42fc-ac10-da3836deec1c(com.mbeddr.components)" />
    <devkit ref="43d889ae-8e6a-4f6e-a649-d59342d8728d(com.mbeddr.statemachines)" />
  </languages>
  <imports>
    <import index="aelz" ref="r:832a1eb9-6df4-4b76-8168-017ed7892fc6(mbeddr.arduino.header.Import)" />
    <import index="1o4w" ref="r:442bb4e7-6f10-4ceb-b79f-652568158259(mbeddr.arduino.platform.Main)" />
    <import index="ec8n" ref="r:df033cd0-34e6-4f58-88d1-8a821b4d317d(com.mbeddr.demo.robot.util)" />
    <import index="t6m2" ref="r:5b5b2089-00bc-4f4a-9b07-7e2ecff90d57(com.mbeddr.demo.robot.io)" />
    <import index="g2ww" ref="r:1d62ae5e-bbdf-48a3-9ff2-3e7f548b6242(com.mbeddr.demo.robot.units)" />
    <import index="azo0" ref="r:0eefe47e-8047-472d-accf-5c763f248835(com.mbeddr.demo.robot.communication)" />
    <import index="3y0n" ref="r:d4d16117-20fb-4ba8-a1b2-1598e121e1d0(com.mbeddr.core.stdlib)" />
    <import index="bs9u" ref="r:6796c9a5-23e8-4b7e-bc37-6a06a8f0a13f(com.mbeddr.demo.robot.avr)" />
    <import index="346p" ref="r:afbbc2f8-bdd5-43d2-bf60-3a9139f2514a(com.mbeddr.demo.robot.time)" />
    <import index="lj5" ref="r:b42e5fe1-f23a-4ff2-83e0-383e9f39f02c(com.mbeddr.demo.robot.motorBoardMessages)" />
    <import index="lmqm" ref="r:cfd6a1d6-4872-45d9-960c-6290f12ecdc1(com.mbeddr.demo.robot.controllers)" />
    <import index="cmgk" ref="r:679066bc-2da8-4932-a09c-5d2b3d47b911(com.mbeddr.ext.units.siunits)" implicit="true" />
  </imports>
  <registry>
    <language id="3828799d-97c8-48d0-af8b-39b903457e1e" name="mbeddr.arduino.registers">
      <concept id="5152824560130951251" name="mbeddr.arduino.registers.structure.ArduinoRegisterKind" flags="ng" index="2Z0gFL" />
    </language>
    <language id="3f445ef3-54ad-4ae5-a22d-91c3ce06375e" name="com.mbeddr.ext.components.concurrency">
      <concept id="4565572669165359943" name="com.mbeddr.ext.components.concurrency.structure.TaskInComponent" flags="ng" index="aynXw">
        <child id="4565572669165359958" name="task" index="aynXL" />
      </concept>
      <concept id="3933288758479891242" name="com.mbeddr.ext.components.concurrency.structure.ScheduleSpecificationInComponent" flags="ng" index="1AFJ9z">
        <child id="3933288758479894243" name="schedule" index="1AFIYE" />
      </concept>
    </language>
    <language id="0d04a6cc-773e-4069-b9b0-11884b2ff1c8" name="com.mbeddr.ext.units">
      <concept id="5348704582971040037" name="com.mbeddr.ext.units.structure.UnitConfigItem" flags="ng" index="2eh4Hv" />
      <concept id="624957442818070507" name="com.mbeddr.ext.units.structure.StripUnitExpression" flags="ng" index="2yh1Mg">
        <child id="624957442818070508" name="innerExpression" index="2yh1Mn" />
      </concept>
      <concept id="8337440621611212272" name="com.mbeddr.ext.units.structure.AnnotatedExpression" flags="ng" index="CIdvy">
        <child id="8337440621611267898" name="innerExpression" index="CIrOC" />
        <child id="8337440621611353453" name="specification" index="CIwXZ" />
      </concept>
      <concept id="8337440621611267903" name="com.mbeddr.ext.units.structure.Unit" flags="ng" index="CIrOH">
        <property id="8337440621611269512" name="description" index="CIruq" />
        <child id="8337440621611270427" name="spec" index="CIsG9" />
      </concept>
      <concept id="8337440621611267900" name="com.mbeddr.ext.units.structure.UnitContainer" flags="ng" index="CIrOI">
        <child id="8337440621611267904" name="contents" index="CIrPi" />
      </concept>
      <concept id="8337440621611273669" name="com.mbeddr.ext.units.structure.UnitReference" flags="ng" index="CIsvn">
        <reference id="8337440621611297532" name="unit" index="CIi3I" />
      </concept>
      <concept id="8337440621611270429" name="com.mbeddr.ext.units.structure.UnitSpecification" flags="ng" index="CIsGf">
        <child id="8337440621611297539" name="components" index="CIi4h" />
      </concept>
      <concept id="8337440621611400980" name="com.mbeddr.ext.units.structure.AnnotatedType" flags="ng" index="CIVk6">
        <child id="8337440621611401032" name="specification" index="CIVlq" />
      </concept>
      <concept id="4121031889271022213" name="com.mbeddr.ext.units.structure.ConvertExpression" flags="ng" index="1PfFCI">
        <reference id="624957442818227315" name="conversionSpecifier" index="2yhJs8" />
        <reference id="4121031889271053292" name="targetUnit" index="1Pfwd7" />
        <child id="4121031889271053290" name="expression" index="1Pfwd1" />
      </concept>
      <concept id="6847490852648488987" name="com.mbeddr.ext.units.structure.GenericUnitMapping" flags="ng" index="3XRFMX">
        <reference id="6847490852648489303" name="metaUnit" index="3XRFRL" />
        <child id="6847490852648489203" name="specification" index="3XRFLl" />
      </concept>
      <concept id="6847490852649574210" name="com.mbeddr.ext.units.structure.IGenericUnitMappingProvider" flags="ng" index="3XVjf$">
        <child id="6727518107535251210" name="unitMappings" index="1QYmkp" />
      </concept>
    </language>
    <language id="e562f51e-6403-4857-b773-44632077c67d" name="mbeddr.arduino.interrupts">
      <concept id="5152824560131535438" name="mbeddr.arduino.interrupts.structure.ArduinoInterruptKind" flags="ng" index="2Z3J3G" />
    </language>
    <language id="028899e1-bfee-4db6-b470-ed0f9ee5f662" name="com.mbeddr.ext.components.embedded">
      <concept id="9172009453270757747" name="com.mbeddr.ext.components.embedded.structure.InterruptComponentTriggerConfigItem" flags="ng" index="3_WZtN" />
      <concept id="9172009453270375539" name="com.mbeddr.ext.components.embedded.structure.InterruptRunnableMapping" flags="ng" index="3_ZhDN">
        <reference id="9172009453270375540" name="interrupt" index="3_ZhDO" />
        <reference id="9172009453270375541" name="instance" index="3_ZhDP" />
        <reference id="9172009453270375542" name="runnable" index="3_ZhDQ" />
      </concept>
      <concept id="9172009453270379331" name="com.mbeddr.ext.components.embedded.structure.InterruptTrigger" flags="ng" index="3_ZiP3" />
    </language>
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" name="com.mbeddr.core.statements">
      <concept id="8441331188640771826" name="com.mbeddr.core.statements.structure.WhileStatement" flags="ng" index="27v$Wf">
        <child id="8441331188640771828" name="body" index="27v$W9" />
        <child id="8441331188640771827" name="condition" index="27v$We" />
      </concept>
      <concept id="6275792049641600983" name="com.mbeddr.core.statements.structure.IfStatement" flags="ng" index="c0U19">
        <child id="6275792049641600984" name="condition" index="c0U16" />
        <child id="6275792049641600985" name="thenPart" index="c0U17" />
        <child id="3134547887598498723" name="elseIfs" index="gg_kh" />
        <child id="3134547887598486571" name="elsePart" index="ggAap" />
      </concept>
      <concept id="3134547887598498470" name="com.mbeddr.core.statements.structure.ElseIfPart" flags="ng" index="gg_gk">
        <child id="3134547887598498471" name="body" index="gg_gl" />
        <child id="3134547887598498479" name="condition" index="gg_gt" />
      </concept>
      <concept id="7763322639126652757" name="com.mbeddr.core.statements.structure.ITypeContainingType" flags="ng" index="2umbIr">
        <child id="7763322639126652758" name="baseType" index="2umbIo" />
      </concept>
      <concept id="1494329074535282918" name="com.mbeddr.core.statements.structure.ElsePart" flags="ng" index="1ly_i6">
        <child id="1494329074535283249" name="body" index="1ly_ph" />
      </concept>
      <concept id="8850915533694634145" name="com.mbeddr.core.statements.structure.InitExpression" flags="ng" index="3o3WLD">
        <child id="8850915533694634146" name="elements" index="3o3WLE" />
      </concept>
      <concept id="7254843406768833938" name="com.mbeddr.core.statements.structure.ExpressionStatement" flags="ng" index="1_9egQ">
        <child id="7254843406768833939" name="expr" index="1_9egR" />
      </concept>
      <concept id="7254843406768596598" name="com.mbeddr.core.statements.structure.ForStatement" flags="ng" index="1_a8vi">
        <child id="7254843406768606771" name="body" index="1_amYn" />
        <child id="7254843406768606790" name="incr" index="1_amZy" />
        <child id="7254843406768606784" name="iterator" index="1_amZ$" />
        <child id="7254843406768606787" name="condition" index="1_amZB" />
      </concept>
      <concept id="7254843406768606755" name="com.mbeddr.core.statements.structure.ForVarDecl" flags="ng" index="1_amY7" />
      <concept id="1679452829930336984" name="com.mbeddr.core.statements.structure.CommentStatement" flags="ng" index="1QiMYF">
        <child id="8624890525768479139" name="textblock" index="3SJzmv" />
      </concept>
      <concept id="4185783222026475238" name="com.mbeddr.core.statements.structure.LocalVariableDeclaration" flags="ng" index="3XIRlf">
        <child id="4185783222026502647" name="init" index="3XIe9u" />
      </concept>
      <concept id="4185783222026475861" name="com.mbeddr.core.statements.structure.StatementList" flags="ng" index="3XIRFW">
        <child id="4185783222026475862" name="statements" index="3XIRFZ" />
      </concept>
      <concept id="4185783222026464515" name="com.mbeddr.core.statements.structure.Statement" flags="ng" index="3XISUE" />
      <concept id="2093108837558113914" name="com.mbeddr.core.statements.structure.LocalVarRef" flags="ng" index="3ZVu4v">
        <reference id="2093108837558124071" name="var" index="3ZVs_2" />
      </concept>
    </language>
    <language id="92d2ea16-5a42-4fdf-a676-c7604efe3504" name="de.slisson.mps.richtext">
      <concept id="2557074442922380897" name="de.slisson.mps.richtext.structure.Text" flags="ng" index="19SGf9">
        <child id="2557074442922392302" name="words" index="19SJt6" />
      </concept>
      <concept id="2557074442922438156" name="de.slisson.mps.richtext.structure.Word" flags="ng" index="19SUe$">
        <property id="2557074442922438158" name="escapedValue" index="19SUeA" />
      </concept>
    </language>
    <language id="2d7fadf5-33f6-4e80-a78f-0f739add2bde" name="com.mbeddr.core.buildconfig">
      <concept id="5046689135693761556" name="com.mbeddr.core.buildconfig.structure.Binary" flags="ng" index="2eOfOj">
        <child id="5046689135693761559" name="referencedModules" index="2eOfOg" />
      </concept>
      <concept id="5046689135693761554" name="com.mbeddr.core.buildconfig.structure.Executable" flags="ng" index="2eOfOl">
        <property id="3431613015799084476" name="isTest" index="iO3LB" />
      </concept>
      <concept id="7717755763392524104" name="com.mbeddr.core.buildconfig.structure.BuildConfiguration" flags="ng" index="2v9HqL">
        <child id="5046689135694070731" name="binaries" index="2ePNbc" />
        <child id="5323740605968447026" name="target" index="2AWWZH" />
      </concept>
      <concept id="7717755763392524107" name="com.mbeddr.core.buildconfig.structure.ModuleRef" flags="ng" index="2v9HqM">
        <reference id="7717755763392524108" name="module" index="2v9HqP" />
      </concept>
    </language>
    <language id="3bf5377a-e904-4ded-9754-5a516023bfaa" name="com.mbeddr.core.pointers">
      <concept id="6113173064528067332" name="com.mbeddr.core.pointers.structure.StringType" flags="ng" index="Pu267" />
      <concept id="6883925235272353061" name="com.mbeddr.core.pointers.structure.SizeOfExprForExpressions" flags="ng" index="Vihyy" />
      <concept id="1595838349830846141" name="com.mbeddr.core.pointers.structure.ReferenceExpr" flags="ng" index="YInwV" />
      <concept id="279446265608459824" name="com.mbeddr.core.pointers.structure.PointerType" flags="ng" index="3wxxNl" />
      <concept id="279446265608463015" name="com.mbeddr.core.pointers.structure.DerefExpr" flags="ng" index="3wxyx2" />
      <concept id="5679441017214012545" name="com.mbeddr.core.pointers.structure.ArrayType" flags="ng" index="3J0A42" />
    </language>
    <language id="d6943f81-8340-4661-9d57-8fc1e2d23b36" name="com.mbeddr.ext.concurrency.plainC">
      <concept id="7587272608860492786" name="com.mbeddr.ext.concurrency.plainC.structure.PlainCStrategy" flags="ng" index="1KpjJf">
        <reference id="8610007178382119196" name="timeSource" index="12uRbP" />
      </concept>
    </language>
    <language id="bd640b8f-4be4-42b6-8dc0-2c94d1ddf606" name="com.mbeddr.ext.components.gen_nomw">
      <concept id="2103658896110278831" name="com.mbeddr.ext.components.gen_nomw.structure.NoMwComponentsGenStrategy" flags="ng" index="3i3YCL">
        <property id="1553713790141527405" name="wireStatically" index="35zhco" />
        <property id="4768833643347725006" name="generateContracts" index="3Ewwow" />
        <reference id="1553713790141527407" name="instanceConfig" index="35zhcq" />
      </concept>
    </language>
    <language id="2693fc71-9b0e-4b05-ab13-f57227d675f2" name="com.mbeddr.core.util">
      <concept id="4459718605982051949" name="com.mbeddr.core.util.structure.ReportingConfiguration" flags="ng" index="2Q9Fgs">
        <child id="4459718605982051999" name="strategy" index="2Q9FjI" />
      </concept>
      <concept id="4459718605982051980" name="com.mbeddr.core.util.structure.PrintfReportingStrategy" flags="ng" index="2Q9FjX" />
    </language>
    <language id="efda956e-491e-4f00-ba14-36af2f213ecf" name="com.mbeddr.core.udt">
      <concept id="4202685725779366523" name="com.mbeddr.core.udt.structure.MemberInitExpression" flags="ng" index="2xZu8t">
        <reference id="4202685725779391329" name="element" index="2xZoc7" />
        <child id="4202685725779390438" name="value" index="2xZpY0" />
      </concept>
      <concept id="6394819151180597816" name="com.mbeddr.core.udt.structure.StructType" flags="ng" index="1sgJKr">
        <reference id="6394819151180597817" name="struct" index="1sgJKq" />
      </concept>
      <concept id="7034214596253391076" name="com.mbeddr.core.udt.structure.GenericMemberRef" flags="ng" index="1E4Tgc">
        <reference id="7034214596253391078" name="member" index="1E4Tge" />
      </concept>
    </language>
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base">
      <concept id="8375407818529178006" name="com.mbeddr.core.base.structure.TextBlock" flags="ng" index="OjmMv">
        <child id="8375407818529178007" name="text" index="OjmMu" />
      </concept>
      <concept id="4459718605982007337" name="com.mbeddr.core.base.structure.IConfigurationContainer" flags="ng" index="2Q9xDo">
        <child id="4459718605982007338" name="configurationItems" index="2Q9xDr" />
      </concept>
      <concept id="3857533489766146428" name="com.mbeddr.core.base.structure.ElementDocumentation" flags="ng" index="1z9TsT">
        <child id="4052432714772608243" name="text" index="1w35rA" />
      </concept>
      <concept id="747084250476811597" name="com.mbeddr.core.base.structure.DefaultGenericChunkDependency" flags="ng" index="3GEVxB">
        <property id="747084250476874891" name="reexport" index="3GEa6x" />
        <reference id="747084250476878887" name="chunk" index="3GEb4d" />
      </concept>
    </language>
    <language id="e3420481-604b-464e-bc1b-06ecfc1f9dfc" name="com.mbeddr.ext.components.units">
      <concept id="7842862366440488704" name="com.mbeddr.ext.components.units.structure.GenericUnitInitializer" flags="ng" index="2L8oV4" />
    </language>
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" name="com.mbeddr.core.modules">
      <concept id="3788988821851860886" name="com.mbeddr.core.modules.structure.GlobalConstantDeclaration" flags="ng" index="4WHVk" />
      <concept id="3788988821852026523" name="com.mbeddr.core.modules.structure.GlobalConstantRef" flags="ng" index="4ZOvp">
        <reference id="3376775282622611130" name="constant" index="2DPCA0" />
      </concept>
      <concept id="8967919205527146149" name="com.mbeddr.core.modules.structure.ReturnStatement" flags="ng" index="2BFjQ_">
        <child id="8967919205527146150" name="expression" index="2BFjQA" />
      </concept>
      <concept id="3376775282622142916" name="com.mbeddr.core.modules.structure.AbstractDefineLike" flags="ng" index="2DRUVY">
        <child id="3376775282622233992" name="value" index="2DQcEM" />
      </concept>
      <concept id="8105003328814797298" name="com.mbeddr.core.modules.structure.IFunctionLike" flags="ng" index="2H9T1B">
        <child id="5708867820623310661" name="arguments" index="1UOdpc" />
      </concept>
      <concept id="6437088627575722813" name="com.mbeddr.core.modules.structure.Module" flags="ng" index="N3F4X">
        <child id="6437088627575722833" name="contents" index="N3F5h" />
        <child id="1317894735999304826" name="imports" index="2OODSX" />
      </concept>
      <concept id="6437088627575722830" name="com.mbeddr.core.modules.structure.ImplementationModule" flags="ng" index="N3F5e" />
      <concept id="6437088627575722831" name="com.mbeddr.core.modules.structure.IModuleContent" flags="ng" index="N3F5f">
        <property id="1317894735999272944" name="exported" index="2OOxQR" />
      </concept>
      <concept id="6437088627575724001" name="com.mbeddr.core.modules.structure.Function" flags="ng" index="N3Fnx">
        <child id="4185783222026475860" name="body" index="3XIRFX" />
      </concept>
      <concept id="8934095934011938595" name="com.mbeddr.core.modules.structure.EmptyModuleContent" flags="ng" index="2NXPZ9" />
      <concept id="7892328519581704407" name="com.mbeddr.core.modules.structure.Argument" flags="ng" index="19RgSI" />
      <concept id="5950410542643524492" name="com.mbeddr.core.modules.structure.FunctionCall" flags="ng" index="3O_q_g">
        <reference id="5950410542643524493" name="function" index="3O_q_h" />
        <child id="5950410542643524495" name="actuals" index="3O_q_j" />
      </concept>
      <concept id="6610873504380357354" name="com.mbeddr.core.modules.structure.GlobalVarRef" flags="ng" index="1S7827">
        <reference id="6610873504380357355" name="var" index="1S7826" />
      </concept>
      <concept id="6610873504380335822" name="com.mbeddr.core.modules.structure.GlobalVariableDeclaration" flags="ng" index="1S7NMz">
        <child id="2771264470558526601" name="init" index="1cecVj" />
      </concept>
      <concept id="2093108837558505658" name="com.mbeddr.core.modules.structure.ArgumentRef" flags="ng" index="3ZUYvv">
        <reference id="2093108837558505659" name="arg" index="3ZUYvu" />
      </concept>
    </language>
    <language id="564e97d6-8fb7-41f5-bfc1-c7ed376efd62" name="com.mbeddr.ext.statemachines">
      <concept id="4709703140582114943" name="com.mbeddr.ext.statemachines.structure.StatemachineConfigItem" flags="ng" index="3yF7LM">
        <property id="4709703140582114945" name="triggerAsConst" index="3yF7Mc" />
      </concept>
    </language>
    <language id="54f2a59b-97bb-4c09-af92-928ebf9c5966" name="com.mbeddr.ext.compositecomponents">
      <concept id="7780999115924218270" name="com.mbeddr.ext.compositecomponents.structure.DelegatingConnector" flags="ng" index="5GgzA">
        <reference id="7780999115924272957" name="internalInstance" index="5GdT5" />
        <reference id="7780999115924272958" name="internalPort" index="5GdT6" />
        <reference id="7780999115924218311" name="outsidePort" index="5GgyZ" />
      </concept>
      <concept id="7780999115924356938" name="com.mbeddr.ext.compositecomponents.structure.InitializeInternalInstances" flags="ng" index="5HLoM" />
      <concept id="7780999115923947731" name="com.mbeddr.ext.compositecomponents.structure.CompositeComponentInstanceConfig" flags="ng" index="5JiAF" />
      <concept id="7780999115923829680" name="com.mbeddr.ext.compositecomponents.structure.CompositeComponent" flags="ng" index="5JLF8" />
      <concept id="7540109328385923714" name="com.mbeddr.ext.compositecomponents.structure.CompositeComponentsConfigItem" flags="ng" index="1eFCfY" />
      <concept id="4859596973183806269" name="com.mbeddr.ext.compositecomponents.structure.ComponentRefExpr" flags="ng" index="1DnYEe">
        <reference id="4859596973185114238" name="providedPort" index="1DcY7d" />
        <reference id="4859596973183806321" name="instance" index="1DnYF2" />
      </concept>
    </language>
    <language id="783af01f-87a7-412c-be99-293a162652b5" name="com.mbeddr.core.embedded">
      <concept id="9172009453269230746" name="com.mbeddr.core.embedded.structure.InterruptConfigItem" flags="ng" index="3_UEaq">
        <child id="9172009453269286214" name="kind" index="3_UBH6" />
      </concept>
      <concept id="6847490852669338277" name="com.mbeddr.core.embedded.structure.RegisterRefExpr" flags="ng" index="3V49S3">
        <reference id="6847490852669338278" name="register" index="3V49S0" />
      </concept>
      <concept id="6847490852669234129" name="com.mbeddr.core.embedded.structure.RegisterConfigurationItem" flags="ng" index="3V4jtR">
        <child id="6847490852670616471" name="kind" index="3Vb1WL" />
      </concept>
    </language>
    <language id="13a36f90-83c5-4bf6-9dd6-70e455f1ef36" name="com.mbeddr.ext.components.statemachine">
      <concept id="1656687801206464316" name="com.mbeddr.ext.components.statemachine.structure.StatemachineInCompsConfigItem" flags="ng" index="0nYfV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="b879012d-402b-40e0-8df7-e6fa93b9b711" name="com.mbeddr.ext.concurrency">
      <concept id="7041988282448699520" name="com.mbeddr.ext.concurrency.structure.StartScheduleStatement" flags="ng" index="6qOI8">
        <property id="7123590915951785440" name="join" index="1Onm7i" />
        <reference id="7041988282448700521" name="schedule" index="6qOXx" />
      </concept>
      <concept id="7041988282448693100" name="com.mbeddr.ext.concurrency.structure.SingleTaskSchedulingConstraint" flags="ng" index="6qQL$">
        <child id="3933288758485162331" name="taskReference" index="1A7$0i" />
      </concept>
      <concept id="7041988282448692952" name="com.mbeddr.ext.concurrency.structure.ScheduleSpecification" flags="ng" index="6qQRg">
        <child id="7041988282448692992" name="constraints" index="6qQK8" />
      </concept>
      <concept id="7551459360495600340" name="com.mbeddr.ext.concurrency.structure.TimeWithUnit" flags="ng" index="6VUUj">
        <property id="7551459360495620501" name="unit" index="6VZRi" />
        <child id="7551459360495619535" name="value" index="6VY68" />
      </concept>
      <concept id="8137843191085062424" name="com.mbeddr.ext.concurrency.structure.Task" flags="ng" index="1iAVhs">
        <child id="8137843191085079198" name="body" index="1iABvq" />
        <child id="562973772910397408" name="kind" index="3JZT99" />
      </concept>
      <concept id="2491447282819596071" name="com.mbeddr.ext.concurrency.structure.IDeclaresTask" flags="ng" index="1vwp$X">
        <property id="4932209942850825261" name="taskID" index="3_dPry" />
      </concept>
      <concept id="4932209942852262205" name="com.mbeddr.ext.concurrency.structure.BlockingConstraint" flags="ng" index="3_amfM" />
      <concept id="3933288758485159593" name="com.mbeddr.ext.concurrency.structure.TaskReference" flags="ng" index="1A7_vw">
        <reference id="3933288758485159597" name="task" index="1A7_v$" />
      </concept>
      <concept id="562973772910539090" name="com.mbeddr.ext.concurrency.structure.BlockingKind" flags="ng" index="3JSqjV" />
      <concept id="562973772910397379" name="com.mbeddr.ext.concurrency.structure.CyclicTaskKind" flags="ng" index="3JZT9E" />
      <concept id="1199577005874920622" name="com.mbeddr.ext.concurrency.structure.CyclicConstraint" flags="ng" index="1NgRL0">
        <child id="7551459360499927672" name="period" index="6EqoZ" />
      </concept>
      <concept id="1199577005875952769" name="com.mbeddr.ext.concurrency.structure.ConcurrencyConfigItem" flags="ng" index="1NkVLJ">
        <child id="1199577005875986116" name="genStrategy" index="1NkNSE" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="transform" index="TgtnS" />
        <child id="738815095926774816" name="portLayouts" index="1pap1a" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="2319506556913311101" name="anchors" index="2Vcluh" />
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
      <concept id="738815095926749345" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Port" flags="ng" index="1pa3jb">
        <property id="7964702570467115501" name="ordinal" index="2gRgW$" />
        <property id="738815095926749379" name="portName" index="1pa3iD" />
      </concept>
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
      </concept>
    </language>
    <language id="97d24244-51db-4e2e-97fc-7bd73b1f5f40" name="com.mbeddr.ext.components">
      <concept id="6616025724454668918" name="com.mbeddr.ext.components.structure.AdapterInstancePortRef" flags="ng" index="219P8x">
        <reference id="6616025724454668919" name="instance" index="219P8w" />
        <reference id="6616025724454668920" name="port" index="219P8J" />
      </concept>
      <concept id="5172178961828157634" name="com.mbeddr.ext.components.structure.PortAdapter" flags="ng" index="21gPQu">
        <child id="6616025724454701213" name="portRef" index="21ad3a" />
      </concept>
      <concept id="7780999115923942144" name="com.mbeddr.ext.components.structure.AbstractInstanceConfiguration" flags="ng" index="5Js9S">
        <child id="7780999115923944213" name="contents" index="5JtDH" />
      </concept>
      <concept id="4643433264761566506" name="com.mbeddr.ext.components.structure.OnInitTrigger" flags="ng" index="2cabNp" />
      <concept id="1302968767135003933" name="com.mbeddr.ext.components.structure.InternalRunnableCall" flags="ng" index="2$_UoH">
        <reference id="1302968767135003934" name="runnable" index="2$_UoI" />
        <child id="5950410542643524495" name="actuals" index="3O_q_k" />
      </concept>
      <concept id="5308710777891512019" name="com.mbeddr.ext.components.structure.Field" flags="ng" index="EbCE0">
        <property id="785275130114861516" name="initField" index="3R_39t" />
        <child id="5308710777891512022" name="init" index="EbCE5" />
      </concept>
      <concept id="5308710777891565561" name="com.mbeddr.ext.components.structure.FieldRef" flags="ng" index="EbZIE">
        <reference id="5308710777891565562" name="field" index="EbZID" />
      </concept>
      <concept id="4491876417845649024" name="com.mbeddr.ext.components.structure.InstanceConfiguration" flags="ng" index="2EWCtd" />
      <concept id="4491876417845649017" name="com.mbeddr.ext.components.structure.InstancePortRef" flags="ng" index="2EWCuO">
        <reference id="4491876417845649018" name="instance" index="2EWCuR" />
        <reference id="3444913373458569211" name="port" index="XcPQd" />
      </concept>
      <concept id="4491876417845649016" name="com.mbeddr.ext.components.structure.AssemblyConnector" flags="ng" index="2EWCuP">
        <child id="4491876417845649021" name="target" index="2EWCuK" />
        <child id="4491876417845649020" name="source" index="2EWCuL" />
      </concept>
      <concept id="4491876417845649014" name="com.mbeddr.ext.components.structure.ComponentInstance" flags="ng" index="2EWCuV">
        <reference id="4491876417845649015" name="component" index="2EWCuU" />
        <child id="785275130114861567" name="initializers" index="3R_39I" />
      </concept>
      <concept id="4491876417845649011" name="com.mbeddr.ext.components.structure.AtomicComponent" flags="ng" index="2EWCuY" />
      <concept id="4491876417845641677" name="com.mbeddr.ext.components.structure.OperationTrigger" flags="ng" index="2EWDw0" />
      <concept id="4491876417845641670" name="com.mbeddr.ext.components.structure.Runnable" flags="ng" index="2EWDwb">
        <child id="4491876417845643892" name="trigger" index="2EWDeT" />
        <child id="4491876417845689763" name="body" index="2EWMhI" />
      </concept>
      <concept id="4491876417845628841" name="com.mbeddr.ext.components.structure.RequiredPort" flags="ng" index="2EWHp$" />
      <concept id="4491876417845628840" name="com.mbeddr.ext.components.structure.ProvidedPort" flags="ng" index="2EWHp_" />
      <concept id="4491876417845683828" name="com.mbeddr.ext.components.structure.OperationParameter" flags="ng" index="2EWNYT" />
      <concept id="4491876417845484930" name="com.mbeddr.ext.components.structure.Port" flags="ng" index="2EX0hf">
        <reference id="4491876417845484932" name="intf" index="2EX0h9" />
      </concept>
      <concept id="4491876417845484924" name="com.mbeddr.ext.components.structure.Operation" flags="ng" index="2EX0iL" />
      <concept id="4491876417845484922" name="com.mbeddr.ext.components.structure.ClientServerInterface" flags="ng" index="2EX0iR">
        <child id="4491876417845484926" name="contents" index="2EX0iN" />
      </concept>
      <concept id="4491876417845474761" name="com.mbeddr.ext.components.structure.Component" flags="ng" index="2EX6K4">
        <child id="6041318036221669720" name="contents" index="2RW2fA" />
      </concept>
      <concept id="8105003328815208362" name="com.mbeddr.ext.components.structure.PortRefExpr" flags="ng" index="2H6loZ">
        <reference id="8105003328815208363" name="port" index="2H6loY" />
      </concept>
      <concept id="8105003328815071749" name="com.mbeddr.ext.components.structure.InterfaceOperationCallExpr" flags="ng" index="2H6Oeg">
        <reference id="8105003328815071752" name="operation" index="2H6Oet" />
        <child id="8105003328815091213" name="actuals" index="2H6KYo" />
      </concept>
      <concept id="8105003328815039001" name="com.mbeddr.ext.components.structure.PortAdapterRefExpr" flags="ng" index="2H6Wec">
        <reference id="8105003328815039002" name="portAdater" index="2H6Wef" />
      </concept>
      <concept id="1089269900847289701" name="com.mbeddr.ext.components.structure.EmptyInstanceConfigContent" flags="ng" index="JAGxh" />
      <concept id="466603768608442377" name="com.mbeddr.ext.components.structure.RequiredPortOpCallExpr" flags="ng" index="30IBQI" />
      <concept id="466603768608410221" name="com.mbeddr.ext.components.structure.PortAdapterOpCallExpr" flags="ng" index="30IJZa" />
      <concept id="2103658896110121032" name="com.mbeddr.ext.components.structure.ComponentsConfigItem" flags="ng" index="3i2$bm">
        <child id="2103658896110238743" name="genStrategy" index="3i30U9" />
      </concept>
      <concept id="591155063063570513" name="com.mbeddr.ext.components.structure.InitializeConfiguration" flags="ng" index="3t9XKO">
        <reference id="591155063063570514" name="config" index="3t9XKR" />
      </concept>
      <concept id="8515777736166878876" name="com.mbeddr.ext.components.structure.EmptyComponentContent" flags="ng" index="3Khz0B" />
      <concept id="4075471389393921682" name="com.mbeddr.ext.components.structure.InterfaceTypeOpCallExpr" flags="ng" index="3LAlOK" />
      <concept id="785275130114861597" name="com.mbeddr.ext.components.structure.InitFieldInitializer" flags="ng" index="3R_36c">
        <reference id="785275130114861598" name="field" index="3R_36f" />
        <child id="785275130114861599" name="value" index="3R_36e" />
      </concept>
      <concept id="4514118643321588318" name="com.mbeddr.ext.components.structure.IOperationTriggerLike" flags="ng" index="1ZwTiz">
        <reference id="4514118643321619583" name="calledOperation" index="1ZwxE2" />
        <reference id="4514118643321592184" name="providedPort" index="1ZwSu5" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="7615572890648529894" name="com.mbeddr.core.expressions.structure.NotEqualsExpression" flags="ng" index="25Bbzn" />
      <concept id="8463282783691618456" name="com.mbeddr.core.expressions.structure.UnsignedInt64tType" flags="ng" index="26Vqp1" />
      <concept id="8463282783691618461" name="com.mbeddr.core.expressions.structure.UnsignedInt8tType" flags="ng" index="26Vqp4" />
      <concept id="8463282783691618440" name="com.mbeddr.core.expressions.structure.Int32tType" flags="ng" index="26Vqph" />
      <concept id="8463282783691618435" name="com.mbeddr.core.expressions.structure.Int16tType" flags="ng" index="26Vqpq" />
      <concept id="8463282783691618466" name="com.mbeddr.core.expressions.structure.UnsignedInt16tType" flags="ng" index="26VqpV" />
      <concept id="8463282783691618426" name="com.mbeddr.core.expressions.structure.Int8tType" flags="ng" index="26Vqqz" />
      <concept id="3005510381523579442" name="com.mbeddr.core.expressions.structure.UnaryExpression" flags="ng" index="2aKSnQ">
        <child id="7254843406768839760" name="expression" index="1_9fRO" />
      </concept>
      <concept id="8864856114140038681" name="com.mbeddr.core.expressions.structure.DoubleType" flags="ng" index="2fgwQN" />
      <concept id="2212975673976017893" name="com.mbeddr.core.expressions.structure.NumericLiteral" flags="ng" index="2hns93">
        <property id="2212975673976043696" name="value" index="2hmy$m" />
      </concept>
      <concept id="8729447926330528686" name="com.mbeddr.core.expressions.structure.TernaryExpression" flags="ng" index="n5E$d">
        <child id="8729447926330528687" name="condition" index="n5E$c" />
        <child id="8729447926330528689" name="elseExpr" index="n5E$i" />
        <child id="8729447926330528688" name="thenExpr" index="n5E$j" />
      </concept>
      <concept id="4620120465980402700" name="com.mbeddr.core.expressions.structure.GenericDotExpression" flags="ng" index="2qmXGp">
        <child id="7034214596252529803" name="target" index="1ESnxz" />
      </concept>
      <concept id="5763383285156373022" name="com.mbeddr.core.expressions.structure.DivExpression" flags="ng" index="2BOcih" />
      <concept id="5763383285156373020" name="com.mbeddr.core.expressions.structure.MultiExpression" flags="ng" index="2BOcij" />
      <concept id="5763383285156373018" name="com.mbeddr.core.expressions.structure.MinusExpression" flags="ng" index="2BOcil" />
      <concept id="5763383285156373013" name="com.mbeddr.core.expressions.structure.PlusExpression" flags="ng" index="2BOciq" />
      <concept id="5763383285156533447" name="com.mbeddr.core.expressions.structure.ParensExpression" flags="ng" index="2BPB98" />
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ng" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="8399455261460717640" name="com.mbeddr.core.expressions.structure.AndExpression" flags="ng" index="2EHzL6" />
      <concept id="3820836583575227340" name="com.mbeddr.core.expressions.structure.DirectPlusAssignmentExpression" flags="ng" index="TPXPH" />
      <concept id="7892328519581699353" name="com.mbeddr.core.expressions.structure.VoidType" flags="ng" index="19Rifw" />
      <concept id="7193082937527768541" name="com.mbeddr.core.expressions.structure.DirectBitwiseORAssignmentExpression" flags="ng" index="1g_Icf" />
      <concept id="4273030818770088794" name="com.mbeddr.core.expressions.structure.DirectMinusAssignmentExpression" flags="ng" index="3omEAT" />
      <concept id="4273030818770088796" name="com.mbeddr.core.expressions.structure.DirectMultiAssignmentExpression" flags="ng" index="3omEAZ" />
      <concept id="9013371069686136255" name="com.mbeddr.core.expressions.structure.BitwiseLeftShiftExpression" flags="ng" index="3oul24" />
      <concept id="22102029902365709" name="com.mbeddr.core.expressions.structure.AssignmentExpr" flags="ng" index="3pqW6w" />
      <concept id="3976803464656498418" name="com.mbeddr.core.expressions.structure.PreDecrementExpression" flags="ng" index="1FldXs" />
      <concept id="3976803464656531170" name="com.mbeddr.core.expressions.structure.UnaryMinusExpression" flags="ng" index="1FllXc" />
      <concept id="743779816742251347" name="com.mbeddr.core.expressions.structure.ITypeDecorator" flags="ng" index="1Ml8iu">
        <child id="7336544617004013388" name="valueType" index="UxbcT" />
      </concept>
      <concept id="6610873504380029780" name="com.mbeddr.core.expressions.structure.CastExpression" flags="ng" index="1S8S4T">
        <child id="6610873504380029790" name="targetType" index="1S8S4N" />
        <child id="6610873504380029782" name="expr" index="1S8S4V" />
      </concept>
      <concept id="8860443239512147451" name="com.mbeddr.core.expressions.structure.LessEqualsExpression" flags="ng" index="3Tl9Jl" />
      <concept id="8860443239512147449" name="com.mbeddr.core.expressions.structure.LessExpression" flags="ng" index="3Tl9Jn" />
      <concept id="8860443239512147447" name="com.mbeddr.core.expressions.structure.GreaterEqualsExpression" flags="ng" index="3Tl9Jp" />
      <concept id="8860443239512147445" name="com.mbeddr.core.expressions.structure.GreaterExpression" flags="ng" index="3Tl9Jr" />
      <concept id="8860443239512129322" name="com.mbeddr.core.expressions.structure.EqualsExpression" flags="ng" index="3TlM44" />
      <concept id="8860443239512128058" name="com.mbeddr.core.expressions.structure.BooleanType" flags="ng" index="3TlMgk" />
      <concept id="8860443239512128054" name="com.mbeddr.core.expressions.structure.Type" flags="ng" index="3TlMgo">
        <property id="2941277002445651368" name="const" index="2c7vTL" />
        <property id="2941277002448691247" name="volatile" index="2caQfQ" />
      </concept>
      <concept id="8860443239512128052" name="com.mbeddr.core.expressions.structure.BinaryExpression" flags="ng" index="3TlMgq">
        <child id="8860443239512128064" name="left" index="3TlMhI" />
        <child id="8860443239512128065" name="right" index="3TlMhJ" />
      </concept>
      <concept id="8860443239512128103" name="com.mbeddr.core.expressions.structure.NumberLiteral" flags="ng" index="3TlMh9" />
      <concept id="8860443239512128099" name="com.mbeddr.core.expressions.structure.FalseLiteral" flags="ng" index="3TlMhd" />
      <concept id="8860443239512128094" name="com.mbeddr.core.expressions.structure.TrueLiteral" flags="ng" index="3TlMhK" />
      <concept id="4375898003726285486" name="com.mbeddr.core.expressions.structure.PostIncrementExpression" flags="ng" index="3TM6Ey" />
      <concept id="4375898003726285487" name="com.mbeddr.core.expressions.structure.PreIncrementExpression" flags="ng" index="3TM6Ez" />
    </language>
    <language id="3c4c8461-a533-4459-916a-dc0176793b4c" name="mbeddr.arduino.core">
      <concept id="2350648883898812438" name="mbeddr.arduino.core.structure.ArduinoPlatform" flags="ng" index="24Uyqy">
        <property id="2350648883899081844" name="compilerOptions" index="24TwF0" />
        <reference id="5466295800791814503" name="description" index="3SIZTQ" />
      </concept>
      <concept id="3750746866331613764" name="mbeddr.arduino.core.structure.ArduinoConfiguration" flags="ng" index="A5USz" />
    </language>
  </registry>
  <node concept="2v9HqL" id="6ySuXqN_op5">
    <node concept="2eOfOl" id="1XyQ$8Lv5Za" role="2ePNbc">
      <property role="iO3LB" value="false" />
      <property role="TrG5h" value="robotMotor" />
      <node concept="2v9HqM" id="1XyQ$8Lv5Zd" role="2eOfOg">
        <ref role="2v9HqP" node="6ySuXqN_am_" resolve="main" />
      </node>
      <node concept="2v9HqM" id="exHFgzZgXr" role="2eOfOg">
        <ref role="2v9HqP" to="aelz:Yv2B6LBx6E" resolve="util_delay" />
      </node>
      <node concept="2v9HqM" id="5zHWU$GA01$" role="2eOfOg">
        <ref role="2v9HqP" node="5zHWU$GzThY" resolve="Chassis" />
      </node>
      <node concept="2v9HqM" id="5zHWU$GA01_" role="2eOfOg">
        <ref role="2v9HqP" to="ec8n:5zHWU$GzMff" resolve="Util" />
      </node>
      <node concept="2v9HqM" id="5zHWU$GA01A" role="2eOfOg">
        <ref role="2v9HqP" to="bs9u:74TmcPjVX9B" resolve="AvrTimers" />
      </node>
      <node concept="2v9HqM" id="5zHWU$GA01C" role="2eOfOg">
        <ref role="2v9HqP" to="t6m2:5zHWU$GuxGd" resolve="IO" />
      </node>
      <node concept="2v9HqM" id="2t4Dw6aF2Ck" role="2eOfOg">
        <ref role="2v9HqP" to="azo0:oDdAT4ofk7" resolve="UART" />
      </node>
      <node concept="2v9HqM" id="2uTv4B9s8as" role="2eOfOg">
        <ref role="2v9HqP" to="bs9u:5KcWL$DkWBy" resolve="avr_interrupt" />
      </node>
      <node concept="2v9HqM" id="74TmcPj3u3V" role="2eOfOg">
        <ref role="2v9HqP" to="azo0:wYuX6q79Oi" resolve="Interrupts" />
      </node>
      <node concept="2v9HqM" id="74TmcPjdSs6" role="2eOfOg">
        <ref role="2v9HqP" to="3y0n:1WTn9U1bbwi" resolve="math" />
      </node>
      <node concept="2v9HqM" id="74TmcPjpb2W" role="2eOfOg">
        <ref role="2v9HqP" to="3y0n:1WTn9U1b1j1" resolve="stdlib" />
      </node>
      <node concept="2v9HqM" id="74TmcPkN8x1" role="2eOfOg">
        <ref role="2v9HqP" to="346p:74TmcPjU_Iv" resolve="Time" />
      </node>
      <node concept="2v9HqM" id="5$_GT_vn1EA" role="2eOfOg">
        <ref role="2v9HqP" to="lj5:2JGF63bDca1" resolve="MotorBoardMessages" />
      </node>
      <node concept="2v9HqM" id="555ATswaQdW" role="2eOfOg">
        <ref role="2v9HqP" to="bs9u:555ATsvQp8E" resolve="avr_registers" />
      </node>
      <node concept="2v9HqM" id="5MdZHRtobX5" role="2eOfOg">
        <ref role="2v9HqP" to="bs9u:74TmcPjVXfk" resolve="AvrIO" />
      </node>
      <node concept="2v9HqM" id="5MdZHRtF0Rc" role="2eOfOg">
        <ref role="2v9HqP" to="lmqm:6Y0wRXx6mS$" resolve="PT1Filter" />
      </node>
      <node concept="2v9HqM" id="5MdZHRtF0Rd" role="2eOfOg">
        <ref role="2v9HqP" to="lmqm:5$_GT_vvVeM" resolve="PIDController" />
      </node>
    </node>
    <node concept="24Uyqy" id="1XyQ$8LAv0W" role="2AWWZH">
      <property role="24TwF0" value="-std=c99" />
      <ref role="3SIZTQ" to="1o4w:1XyQ$8Lq_J6" resolve="Atmega32u4" />
    </node>
    <node concept="3V4jtR" id="1XyQ$8LAv3o" role="2Q9xDr">
      <node concept="2Z0gFL" id="exHFg$5HaR" role="3Vb1WL" />
    </node>
    <node concept="3_UEaq" id="1XyQ$8LAv3D" role="2Q9xDr">
      <node concept="2Z3J3G" id="2uTv4B9Q_F_" role="3_UBH6" />
    </node>
    <node concept="3_WZtN" id="2t4Dw6aF6c2" role="2Q9xDr" />
    <node concept="2eh4Hv" id="exHFgzLbsU" role="2Q9xDr" />
    <node concept="2Q9Fgs" id="exHFgzLbtQ" role="2Q9xDr">
      <node concept="2Q9FjX" id="exHFgzLbtR" role="2Q9FjI" />
    </node>
    <node concept="1eFCfY" id="exHFgzM6Yx" role="2Q9xDr" />
    <node concept="3i2$bm" id="exHFgzLbrX" role="2Q9xDr">
      <node concept="3i3YCL" id="exHFgzLbsp" role="3i30U9">
        <property role="3Ewwow" value="true" />
        <property role="35zhco" value="true" />
        <ref role="35zhcq" node="exHFgzLGS8" resolve="Instances" />
      </node>
    </node>
    <node concept="A5USz" id="1XyQ$8LAv44" role="2Q9xDr" />
    <node concept="1NkVLJ" id="7tWSY$PnzKk" role="2Q9xDr">
      <node concept="1KpjJf" id="7tWSY$Pn__O" role="1NkNSE">
        <ref role="12uRbP" node="7tWSY$Pnt3r" resolve="getCurrentTimeUS" />
      </node>
    </node>
    <node concept="3yF7LM" id="7tWSY$Pn_An" role="2Q9xDr">
      <property role="3yF7Mc" value="true" />
    </node>
    <node concept="0nYfV" id="7tWSY$Pn_Bo" role="2Q9xDr" />
  </node>
  <node concept="N3F5e" id="6ySuXqN_am_">
    <property role="TrG5h" value="main" />
    <node concept="4WHVk" id="5MdZHRtDYnI" role="N3F5h">
      <property role="TrG5h" value="TIMER_FREQUENCY" />
      <node concept="CIdvy" id="5MdZHRtDYnJ" role="2DQcEM">
        <node concept="3TlMh9" id="5MdZHRtDYnK" role="CIrOC">
          <property role="2hmy$m" value="490.0" />
        </node>
        <node concept="CIsGf" id="5MdZHRtDYnL" role="CIwXZ">
          <node concept="CIsvn" id="5MdZHRtDYnM" role="CIi4h">
            <ref role="CIi3I" to="g2ww:5zHWU$G$0WZ" resolve="Hz" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4WHVk" id="7mELSK8GwDi" role="N3F5h">
      <property role="TrG5h" value="TICKS_PER_SECOND" />
      <node concept="3TlMh9" id="7mELSK8Gz42" role="2DQcEM">
        <property role="2hmy$m" value="490" />
      </node>
    </node>
    <node concept="4WHVk" id="7tWSY$PnOOu" role="N3F5h">
      <property role="TrG5h" value="TIMER_PERIOD_US" />
      <node concept="2BPB98" id="7tWSY$PnS5M" role="2DQcEM">
        <node concept="2BOcih" id="7tWSY$PnRvv" role="1_9fRO">
          <node concept="4ZOvp" id="7tWSY$PnRw1" role="3TlMhJ">
            <ref role="2DPCA0" node="7mELSK8GwDi" resolve="TICKS_PER_SECOND" />
          </node>
          <node concept="3TlMh9" id="7tWSY$PnRoE" role="3TlMhI">
            <property role="2hmy$m" value="1000000" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4WHVk" id="5MdZHRtEjqZ" role="N3F5h">
      <property role="TrG5h" value="DISK_SEGMENTS" />
      <node concept="3TlMh9" id="5MdZHRtEkQw" role="2DQcEM">
        <property role="2hmy$m" value="40" />
      </node>
    </node>
    <node concept="2NXPZ9" id="6ySuXqN_aBx" role="N3F5h">
      <property role="TrG5h" value="empty_1435839935739_5" />
    </node>
    <node concept="1S7NMz" id="7tWSY$PnlXP" role="N3F5h">
      <property role="TrG5h" value="currentTimeUS" />
      <node concept="26Vqp1" id="7tWSY$PnlXN" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="3TlMh9" id="7tWSY$Pnoie" role="1cecVj">
        <property role="2hmy$m" value="0" />
      </node>
    </node>
    <node concept="2NXPZ9" id="7tWSY$PnjtH" role="N3F5h">
      <property role="TrG5h" value="empty_1439801690953_53" />
    </node>
    <node concept="N3Fnx" id="7tWSY$Pnt3r" role="N3F5h">
      <property role="TrG5h" value="getCurrentTimeUS" />
      <property role="2OOxQR" value="true" />
      <node concept="26Vqp1" id="7tWSY$PnvpG" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="3XIRFW" id="7tWSY$Pnt3t" role="3XIRFX">
        <node concept="2BFjQ_" id="7tWSY$Pnvqq" role="3XIRFZ">
          <node concept="1S7827" id="7tWSY$PnvqF" role="2BFjQA">
            <ref role="1S7826" node="7tWSY$PnlXP" resolve="currentTimeUS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="7tWSY$PnqDW" role="N3F5h">
      <property role="TrG5h" value="empty_1439801706836_55" />
    </node>
    <node concept="N3Fnx" id="exHFgzLFdS" role="N3F5h">
      <property role="TrG5h" value="main" />
      <property role="2OOxQR" value="true" />
      <node concept="3XIRFW" id="exHFgzLFdU" role="3XIRFX">
        <node concept="3XISUE" id="exHFgzLFdV" role="3XIRFZ" />
        <node concept="3t9XKO" id="exHFgzLIdv" role="3XIRFZ">
          <ref role="3t9XKR" node="exHFgzLGS8" resolve="Instances" />
        </node>
        <node concept="3XISUE" id="exHFgzLGeX" role="3XIRFZ" />
        <node concept="27v$Wf" id="exHFgzLGcN" role="3XIRFZ">
          <node concept="3XIRFW" id="exHFgzLGcO" role="27v$W9">
            <node concept="1_9egQ" id="exHFgzLHpN" role="3XIRFZ">
              <node concept="30IJZa" id="exHFgzLHrB" role="1_9egR">
                <ref role="2H6Oet" to="ec8n:exHFgzK8US" resolve="run" />
                <node concept="2H6Wec" id="exHFgzLHpM" role="1_9fRO">
                  <ref role="2H6Wef" node="exHFgzLHpA" resolve="main_runnable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3TlMhK" id="exHFgzLGdM" role="27v$We" />
        </node>
        <node concept="3XISUE" id="exHFgzLGch" role="3XIRFZ" />
      </node>
      <node concept="26Vqph" id="exHFgzLGb4" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="exHFgzLGb6" role="1UOdpc">
        <property role="TrG5h" value="argc" />
        <node concept="26Vqph" id="exHFgzLGb5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="exHFgzLGb9" role="1UOdpc">
        <property role="TrG5h" value="argv" />
        <node concept="3J0A42" id="exHFgzLGb8" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="Pu267" id="exHFgzLGb7" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="1XyQ$8LAwOt" role="N3F5h">
      <property role="TrG5h" value="empty_1435922857650_2" />
    </node>
    <node concept="2EWCtd" id="exHFgzLGS8" role="N3F5h">
      <property role="TrG5h" value="Instances" />
      <node concept="2EWCuV" id="exHFgzLHpf" role="5JtDH">
        <property role="TrG5h" value="mainComp" />
        <ref role="2EWCuU" node="exHFgzLKSy" resolve="MainComponent" />
        <node concept="gqqVs" id="5zHWU$GwxoZ" role="lGtFl">
          <property role="gqqTZ" value="192.0001983642578" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="125.0" />
          <property role="gqqTy" value="30.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="5zHWU$Gwxp0" role="1pap1a">
            <property role="1pa3iD" value="processable" />
            <property role="2gRgW$" value="536870911" />
          </node>
        </node>
      </node>
      <node concept="3_ZhDN" id="2uTv4B9$wP4" role="5JtDH">
        <ref role="3_ZhDP" node="exHFgzLHpf" resolve="mainComp" />
        <ref role="3_ZhDQ" node="2uTv4B9$zMh" resolve="isrReceiveRunnable" />
        <ref role="3_ZhDO" to="bs9u:oDdAT4olMA" resolve="USART1_RX_vect" />
      </node>
      <node concept="3_ZhDN" id="2uTv4B9$$Ww" role="5JtDH">
        <ref role="3_ZhDP" node="exHFgzLHpf" resolve="mainComp" />
        <ref role="3_ZhDQ" node="2uTv4B9$$rl" resolve="isrTransmitRunnable" />
        <ref role="3_ZhDO" to="bs9u:71$yxaETjq" resolve="USART1_UDRE_vect" />
      </node>
      <node concept="3_ZhDN" id="5MdZHRtBTlD" role="5JtDH">
        <ref role="3_ZhDO" to="bs9u:5KcWL$Dltq7" resolve="TIMER1_OVF_vect" />
        <ref role="3_ZhDP" node="exHFgzLHpf" resolve="mainComp" />
        <ref role="3_ZhDQ" node="5MdZHRtBSG_" resolve="isrTimer1Ovf" />
      </node>
      <node concept="JAGxh" id="5MdZHRtBTlX" role="5JtDH" />
      <node concept="21gPQu" id="exHFgzLHpA" role="5JtDH">
        <property role="TrG5h" value="main_runnable" />
        <node concept="219P8x" id="exHFgzLHpB" role="21ad3a">
          <ref role="219P8w" node="exHFgzLHpf" resolve="mainComp" />
          <ref role="219P8J" node="exHFgzLLsD" resolve="runnable0" />
        </node>
        <node concept="gqqVs" id="5zHWU$Gwxp1" role="lGtFl">
          <property role="gqqTZ" value="12.000100135803223" />
          <property role="gqqTW" value="17.999950408935547" />
          <property role="gqqTX" value="118.0" />
          <property role="gqqTy" value="18.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRI7" id="5zHWU$Gwxp3" role="lGtFl">
        <node concept="37mRIm" id="5zHWU$Gwxp4" role="37mRID">
          <property role="37mO49" value="261691138174801511" />
          <node concept="2VclpC" id="5zHWU$Gwxp2" role="37mO4d">
            <node concept="3ul5H1" id="5zHWU$Gwxp5" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="5zHWU$Gwxp6" role="3ul5Gz">
                <node concept="2VclrF" id="5zHWU$Gwxp7" role="3wpmZR">
                  <property role="2Vclpx" value="-161.0000991821289" />
                  <property role="2Vclpz" value="-12.0" />
                </node>
                <node concept="2VclrF" id="5zHWU$Gwxp8" role="3wpmZP">
                  <property role="2Vclpx" value="155.0000991821289" />
                  <property role="2Vclpz" value="27.0" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="5zHWU$Gwxp9" role="3ul5Gx">
              <property role="3ul5GH" value="startRole" />
              <node concept="3wpmZ1" id="5zHWU$Gwxpa" role="3ul5Gz">
                <node concept="2VclrF" id="5zHWU$Gwxpb" role="3wpmZR">
                  <property role="2Vclpx" value="-158.97056274847716" />
                  <property role="2Vclpz" value="-12.0" />
                </node>
                <node concept="2VclrF" id="5zHWU$Gwxpc" role="3wpmZP">
                  <property role="2Vclpx" value="144.48528137423858" />
                  <property role="2Vclpz" value="27.0" />
                </node>
              </node>
            </node>
            <node concept="3ul5H1" id="5zHWU$Gwxpd" role="3ul5Gx">
              <property role="3ul5GH" value="endRole" />
              <node concept="3wpmZ1" id="5zHWU$Gwxpe" role="3ul5Gz">
                <node concept="2VclrF" id="5zHWU$Gwxpf" role="3wpmZR">
                  <property role="2Vclpx" value="-163.02963561578065" />
                  <property role="2Vclpz" value="-12.0" />
                </node>
                <node concept="2VclrF" id="5zHWU$Gwxpg" role="3wpmZP">
                  <property role="2Vclpx" value="165.51491699001923" />
                  <property role="2Vclpz" value="27.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="exHFgzLGn2" role="N3F5h">
      <property role="TrG5h" value="empty_1436178749474_12" />
    </node>
    <node concept="5JLF8" id="exHFgzLKSy" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="MainComponent" />
      <node concept="2EWHp_" id="exHFgzLLsD" role="2RW2fA">
        <property role="TrG5h" value="runnable0" />
        <ref role="2EX0h9" to="ec8n:exHFgzK8Pv" resolve="IRunnable" />
      </node>
      <node concept="2EWHp_" id="2uTv4B9$vAG" role="2RW2fA">
        <property role="TrG5h" value="isrReceive" />
        <ref role="2EX0h9" to="azo0:2uTv4B9$nLa" resolve="IInterruptServiceRoutine" />
      </node>
      <node concept="2EWHp_" id="2uTv4B9$vAH" role="2RW2fA">
        <property role="TrG5h" value="isrTransmit" />
        <ref role="2EX0h9" to="azo0:2uTv4B9$nLa" resolve="IInterruptServiceRoutine" />
      </node>
      <node concept="3Khz0B" id="6rrUiciy1Dj" role="2RW2fA" />
      <node concept="EbCE0" id="5MdZHRtE2nN" role="2RW2fA">
        <property role="TrG5h" value="timer1Interrupts" />
        <node concept="26Vqp4" id="7tTb7FtAJEh" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMh9" id="7tTb7FtAJIG" role="EbCE5">
          <property role="2hmy$m" value="0" />
        </node>
      </node>
      <node concept="EbCE0" id="7tTb7FtzXZQ" role="2RW2fA">
        <property role="TrG5h" value="currentTask" />
        <node concept="26Vqp4" id="7tTb7FtzXZO" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMh9" id="7tTb7FtzYCa" role="EbCE5">
          <property role="2hmy$m" value="0" />
        </node>
      </node>
      <node concept="3Khz0B" id="5$_GT_vmRIh" role="2RW2fA" />
      <node concept="EbCE0" id="5$_GT_vmUO3" role="2RW2fA">
        <property role="TrG5h" value="messageFromControl" />
        <node concept="1sgJKr" id="5$_GT_vmUO2" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="1sgJKq" to="lj5:2JGF63bDcaL" resolve="Control2MotorMessage" />
        </node>
        <node concept="3o3WLD" id="5$_GT_vmXwx" role="EbCE5">
          <node concept="2xZu8t" id="5$_GT_vmXy7" role="3o3WLE">
            <ref role="2xZoc7" to="lj5:2JGF63bDcb4" resolve="speed" />
            <node concept="CIdvy" id="5$_GT_vmYMA" role="2xZpY0">
              <node concept="3TlMh9" id="5$_GT_vmYM_" role="CIrOC">
                <property role="2hmy$m" value="0.0" />
              </node>
              <node concept="CIsGf" id="5$_GT_vmYMB" role="CIwXZ">
                <node concept="CIsvn" id="5$_GT_vmYMC" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2xZu8t" id="5$_GT_vmYmH" role="3o3WLE">
            <ref role="2xZoc7" to="lj5:5$_GT_vOLGp" resolve="rotation" />
            <node concept="CIdvy" id="5$_GT_vmYHi" role="2xZpY0">
              <node concept="3TlMh9" id="5$_GT_vmYHh" role="CIrOC">
                <property role="2hmy$m" value="0.0" />
              </node>
              <node concept="CIsGf" id="5$_GT_vmYHj" role="CIwXZ">
                <node concept="CIsvn" id="5$_GT_vON3z" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="7mELSK8FDJ$" role="2RW2fA">
        <property role="TrG5h" value="messageToControl" />
        <node concept="1sgJKr" id="7mELSK8FDJz" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="1sgJKq" to="lj5:7mELSK8FAzc" resolve="Motor2ControlMessage" />
        </node>
        <node concept="3o3WLD" id="7mELSK8FEsq" role="EbCE5">
          <node concept="2xZu8t" id="7mELSK8FEtA" role="3o3WLE">
            <ref role="2xZoc7" to="lj5:7mELSK8FA$2" resolve="leftWheelBlocked" />
            <node concept="3TlMhd" id="7mELSK8FEup" role="2xZpY0" />
          </node>
          <node concept="2xZu8t" id="7mELSK8FEwR" role="3o3WLE">
            <ref role="2xZoc7" to="lj5:7mELSK8FA$T" resolve="rightWheelBlocked" />
            <node concept="3TlMhd" id="7mELSK8FEye" role="2xZpY0" />
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="exHFgzLNkK" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$GPO_J" role="2RW2fA">
        <property role="TrG5h" value="setup" />
        <node concept="3XIRFW" id="5zHWU$GPO_K" role="2EWMhI">
          <node concept="5HLoM" id="5zHWU$GPOIr" role="3XIRFZ" />
          <node concept="3XISUE" id="2t4Dw6aEIB_" role="3XIRFZ" />
          <node concept="1_9egQ" id="5MdZHRto7RC" role="3XIRFZ">
            <node concept="3LAlOK" id="5MdZHRto7Vx" role="1_9egR">
              <ref role="2H6Oet" to="t6m2:5zHWU$GuxIw" resolve="asInput" />
              <node concept="1DnYEe" id="5MdZHRto7RB" role="1_9fRO">
                <ref role="1DnYF2" node="5MdZHRto0vz" resolve="leftWheelSensor" />
                <ref role="1DcY7d" to="bs9u:74TmcPjVXfm" resolve="pin" />
              </node>
              <node concept="3TlMhd" id="5MdZHRto7Wu" role="2H6KYo" />
            </node>
          </node>
          <node concept="1_9egQ" id="5MdZHRto7Xl" role="3XIRFZ">
            <node concept="3LAlOK" id="5MdZHRtvUpl" role="1_9egR">
              <ref role="2H6Oet" to="t6m2:5zHWU$GuxIw" resolve="asInput" />
              <node concept="1DnYEe" id="5MdZHRto7Xn" role="1_9fRO">
                <ref role="1DcY7d" to="bs9u:74TmcPjVXfm" resolve="pin" />
                <ref role="1DnYF2" node="5MdZHRto6Ye" resolve="rightWheelSensor" />
              </node>
              <node concept="3TlMhd" id="5MdZHRtvUra" role="2H6KYo" />
            </node>
          </node>
          <node concept="3XISUE" id="5MdZHRtqa1V" role="3XIRFZ" />
          <node concept="1_9egQ" id="5MdZHRto9vU" role="3XIRFZ">
            <node concept="3LAlOK" id="5MdZHRto9EH" role="1_9egR">
              <ref role="2H6Oet" node="5zHWU$GzTqX" resolve="setSpeed" />
              <node concept="1DnYEe" id="5MdZHRto9vT" role="1_9fRO">
                <ref role="1DcY7d" node="5zHWU$GzTuP" resolve="motor" />
                <ref role="1DnYF2" node="5zHWU$G_QF2" resolve="leftMotor" />
              </node>
              <node concept="CIdvy" id="5MdZHRtq9H$" role="2H6KYo">
                <node concept="3TlMh9" id="5MdZHRtq9Hz" role="CIrOC">
                  <property role="2hmy$m" value="0" />
                </node>
                <node concept="CIsGf" id="5MdZHRtq9H_" role="CIwXZ">
                  <node concept="CIsvn" id="5MdZHRtq9HA" role="CIi4h">
                    <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5MdZHRttZxv" role="3XIRFZ">
            <node concept="3LAlOK" id="5MdZHRttZxw" role="1_9egR">
              <ref role="2H6Oet" node="5zHWU$GzTqX" resolve="setSpeed" />
              <node concept="1DnYEe" id="5MdZHRttZxx" role="1_9fRO">
                <ref role="1DcY7d" node="5zHWU$GzTuP" resolve="motor" />
                <ref role="1DnYF2" node="5zHWU$G_QGL" resolve="rightMotor" />
              </node>
              <node concept="CIdvy" id="5MdZHRttZxy" role="2H6KYo">
                <node concept="3TlMh9" id="5MdZHRttZxz" role="CIrOC">
                  <property role="2hmy$m" value="0" />
                </node>
                <node concept="CIsGf" id="5MdZHRttZx$" role="CIwXZ">
                  <node concept="CIsvn" id="5MdZHRttZx_" role="CIi4h">
                    <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="5MdZHRtqa2C" role="3XIRFZ" />
          <node concept="1_9egQ" id="5MdZHRtBUfX" role="3XIRFZ">
            <node concept="3LAlOK" id="5MdZHRtBUlq" role="1_9egR">
              <ref role="2H6Oet" to="t6m2:5zHWU$GuxHh" resolve="asOutput" />
              <node concept="1DnYEe" id="5MdZHRtBUfW" role="1_9fRO">
                <ref role="1DnYF2" node="5MdZHRtBTOL" resolve="tk2" />
                <ref role="1DcY7d" to="bs9u:74TmcPjVXfm" resolve="pin" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="5MdZHRtBUsa" role="3XIRFZ" />
          <node concept="1QiMYF" id="5MdZHRtE0Ky" role="3XIRFZ">
            <node concept="OjmMv" id="5MdZHRtE0K$" role="3SJzmv">
              <node concept="19SGf9" id="5MdZHRtE0K_" role="OjmMu">
                <node concept="19SUe$" id="5MdZHRtE0KA" role="19SJt6">
                  <property role="19SUeA" value="Enable timer1 interrupt&#10;This is done here for simplicity. A better solution is to extend the timer component to support PWM and clock mode at the same time. The problem is, that it is not possible to configure both modes independently.&#10;With the current PWM settings we get a clock frequency of about 490 Hz." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5MdZHRtBUI4" role="3XIRFZ">
            <node concept="1g_Icf" id="5MdZHRtBUMS" role="1_9egR">
              <node concept="2BPB98" id="5MdZHRtBUNe" role="3TlMhJ">
                <node concept="3oul24" id="5MdZHRtBV6L" role="1_9fRO">
                  <node concept="3V49S3" id="5MdZHRtBV7t" role="3TlMhJ">
                    <ref role="3V49S0" to="bs9u:5KcWL$Dl1kO" resolve="TOIE1" />
                  </node>
                  <node concept="3TlMh9" id="5MdZHRtBUNz" role="3TlMhI">
                    <property role="2hmy$m" value="1" />
                  </node>
                </node>
              </node>
              <node concept="3V49S3" id="5MdZHRtBUI2" role="3TlMhI">
                <ref role="3V49S0" to="bs9u:5KcWL$DkBFW" resolve="TIMSK1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="5zHWU$GPOHV" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2cabNp" id="5zHWU$GPOIj" role="2EWDeT" />
      </node>
      <node concept="3Khz0B" id="5zHWU$GPOtN" role="2RW2fA" />
      <node concept="5JiAF" id="exHFgzLKSz" role="2RW2fA">
        <node concept="2EWCuV" id="5zHWU$G_QyR" role="5JtDH">
          <property role="TrG5h" value="chassis" />
          <ref role="2EWCuU" node="5zHWU$GzTij" resolve="Chassis" />
          <node concept="gqqVs" id="5zHWU$GDLOW" role="lGtFl">
            <property role="gqqTZ" value="343.0" />
            <property role="gqqTW" value="319.45001220703125" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="30.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLOX" role="1pap1a">
              <property role="1pa3iD" value="chassis" />
              <property role="2gRgW$" value="536870911" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLOY" role="1pap1a">
              <property role="1pa3iD" value="leftWheel" />
              <property role="2gRgW$" value="1360072975" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLOZ" role="1pap1a">
              <property role="1pa3iD" value="rightWheel" />
              <property role="2gRgW$" value="1861152493" />
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5zHWU$G_QF2" role="5JtDH">
          <property role="TrG5h" value="leftMotor" />
          <ref role="2EWCuU" node="5zHWU$GzTu3" resolve="Motor" />
          <node concept="gqqVs" id="5zHWU$GDLP6" role="lGtFl">
            <property role="gqqTZ" value="883.3333129882812" />
            <property role="gqqTW" value="152.4499969482422" />
            <property role="gqqTX" value="104.0" />
            <property role="gqqTy" value="56.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLP7" role="1pap1a">
              <property role="1pa3iD" value="motor" />
              <property role="2gRgW$" value="536870911" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLP8" role="1pap1a">
              <property role="1pa3iD" value="pwmForward" />
              <property role="2gRgW$" value="1393307847" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLP9" role="1pap1a">
              <property role="1pa3iD" value="pwmBackward" />
              <property role="2gRgW$" value="1827917602" />
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5zHWU$G_QGL" role="5JtDH">
          <property role="TrG5h" value="rightMotor" />
          <ref role="2EWCuU" node="5zHWU$GzTu3" resolve="Motor" />
          <node concept="gqqVs" id="5zHWU$GDLPa" role="lGtFl">
            <property role="gqqTZ" value="876.0" />
            <property role="gqqTW" value="314.45001220703125" />
            <property role="gqqTX" value="115.0" />
            <property role="gqqTy" value="46.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLPb" role="1pap1a">
              <property role="1pa3iD" value="motor" />
              <property role="2gRgW$" value="536870911" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLPc" role="1pap1a">
              <property role="1pa3iD" value="pwmForward" />
              <property role="2gRgW$" value="1384971340" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLPd" role="1pap1a">
              <property role="1pa3iD" value="pwmBackward" />
              <property role="2gRgW$" value="1836254117" />
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5zHWU$G_QLg" role="5JtDH">
          <property role="TrG5h" value="timer1" />
          <ref role="2EWCuU" to="bs9u:fWgwtoBQox" resolve="Timer1" />
          <node concept="gqqVs" id="5zHWU$GDLPe" role="lGtFl">
            <property role="gqqTZ" value="1164.0" />
            <property role="gqqTW" value="172.0" />
            <property role="gqqTX" value="83.0" />
            <property role="gqqTy" value="30.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLPf" role="1pap1a">
              <property role="1pa3iD" value="pinA" />
              <property role="2gRgW$" value="787410670" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLPg" role="1pap1a">
              <property role="1pa3iD" value="pinB" />
              <property role="2gRgW$" value="286331152" />
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5zHWU$G_QXg" role="5JtDH">
          <property role="TrG5h" value="timer3" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXcc" resolve="Timer3" />
          <node concept="gqqVs" id="5zHWU$GDLPh" role="lGtFl">
            <property role="gqqTZ" value="1164.0" />
            <property role="gqqTW" value="332.0" />
            <property role="gqqTX" value="83.0" />
            <property role="gqqTy" value="30.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLPi" role="1pap1a">
              <property role="1pa3iD" value="pinA" />
              <property role="2gRgW$" value="536870911" />
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5zHWU$G_QZA" role="5JtDH">
          <property role="TrG5h" value="timer4" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXdB" resolve="Timer4" />
          <node concept="gqqVs" id="5zHWU$GDLPj" role="lGtFl">
            <property role="gqqTZ" value="1164.0" />
            <property role="gqqTW" value="252.0" />
            <property role="gqqTX" value="83.0" />
            <property role="gqqTy" value="30.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLPk" role="1pap1a">
              <property role="1pa3iD" value="pinD" />
              <property role="2gRgW$" value="536870911" />
            </node>
          </node>
        </node>
        <node concept="JAGxh" id="5zHWU$G_QBn" role="5JtDH" />
        <node concept="2EWCuP" id="5zHWU$G_QD6" role="5JtDH">
          <node concept="2EWCuO" id="5zHWU$G_QD7" role="2EWCuL">
            <ref role="2EWCuR" node="5zHWU$G_QyR" resolve="chassis" />
            <ref role="XcPQd" node="5zHWU$G$akp" resolve="leftWheel" />
          </node>
          <node concept="2EWCuO" id="5zHWU$G_QD8" role="2EWCuK">
            <ref role="2EWCuR" node="7mELSK4gM6h" resolve="leftWheelController" />
            <ref role="XcPQd" node="7mELSK4h74W" resolve="wheel" />
          </node>
          <node concept="2VclpC" id="5zHWU$GW6LS" role="lGtFl">
            <node concept="2VclrF" id="5zHWU$GW6LT" role="2Vcluh">
              <property role="2Vclpx" value="470.0" />
              <property role="2Vclpz" value="321.625" />
            </node>
            <node concept="2VclrF" id="5zHWU$GW6LU" role="2Vcluh">
              <property role="2Vclpx" value="470.0" />
              <property role="2Vclpz" value="180.4499969482422" />
            </node>
          </node>
        </node>
        <node concept="2EWCuP" id="5zHWU$G_QDG" role="5JtDH">
          <node concept="2EWCuO" id="5zHWU$G_QDH" role="2EWCuL">
            <ref role="2EWCuR" node="5zHWU$G_QyR" resolve="chassis" />
            <ref role="XcPQd" node="5zHWU$G$akU" resolve="rightWheel" />
          </node>
          <node concept="2EWCuO" id="5zHWU$G_QDI" role="2EWCuK">
            <ref role="2EWCuR" node="7mELSK4gMtN" resolve="rightWheelController" />
            <ref role="XcPQd" node="7mELSK4h74W" resolve="wheel" />
          </node>
          <node concept="2VclpC" id="5zHWU$GDLPL" role="lGtFl" />
        </node>
        <node concept="JAGxh" id="5zHWU$GSWZp" role="5JtDH" />
        <node concept="2EWCuP" id="5zHWU$G_R23" role="5JtDH">
          <node concept="2EWCuO" id="5zHWU$G_R24" role="2EWCuL">
            <ref role="XcPQd" node="5zHWU$GzTik" resolve="pwmForward" />
            <ref role="2EWCuR" node="5zHWU$G_QF2" resolve="leftMotor" />
          </node>
          <node concept="2EWCuO" id="5zHWU$G_R25" role="2EWCuK">
            <ref role="2EWCuR" node="5zHWU$G_QLg" resolve="timer1" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXam" resolve="pinB" />
          </node>
          <node concept="2VclpC" id="5zHWU$GW6My" role="lGtFl">
            <node concept="2VclrF" id="5zHWU$GW6Mz" role="2Vcluh">
              <property role="2Vclpx" value="1028.0" />
              <property role="2Vclpz" value="170.89999389648438" />
            </node>
            <node concept="2VclrF" id="5zHWU$GW6M$" role="2Vcluh">
              <property role="2Vclpx" value="1028.0" />
              <property role="2Vclpz" value="126.0" />
            </node>
            <node concept="2VclrF" id="5zHWU$GW6MX" role="2Vcluh">
              <property role="2Vclpx" value="1127.0" />
              <property role="2Vclpz" value="126.0" />
            </node>
            <node concept="2VclrF" id="5zHWU$GW6MY" role="2Vcluh">
              <property role="2Vclpx" value="1127.0" />
              <property role="2Vclpz" value="174.1750030517578" />
            </node>
          </node>
        </node>
        <node concept="2EWCuP" id="5zHWU$G_Su5" role="5JtDH">
          <node concept="2EWCuO" id="5zHWU$G_Su6" role="2EWCuL">
            <ref role="XcPQd" node="5zHWU$GzTiA" resolve="pwmBackward" />
            <ref role="2EWCuR" node="5zHWU$G_QF2" resolve="leftMotor" />
          </node>
          <node concept="2EWCuO" id="5zHWU$G_Su7" role="2EWCuK">
            <ref role="2EWCuR" node="5zHWU$G_QLg" resolve="timer1" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXal" resolve="pinA" />
          </node>
          <node concept="2VclpC" id="5zHWU$GDLQG" role="lGtFl" />
        </node>
        <node concept="2EWCuP" id="5zHWU$G_Svi" role="5JtDH">
          <node concept="2EWCuO" id="5zHWU$G_Svj" role="2EWCuL">
            <ref role="XcPQd" node="5zHWU$GzTik" resolve="pwmForward" />
            <ref role="2EWCuR" node="5zHWU$G_QGL" resolve="rightMotor" />
          </node>
          <node concept="2EWCuO" id="5zHWU$G_Svk" role="2EWCuK">
            <ref role="2EWCuR" node="5zHWU$G_QZA" resolve="timer4" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXdC" resolve="pinD" />
          </node>
          <node concept="2VclpC" id="5zHWU$GW6LV" role="lGtFl">
            <node concept="2VclrF" id="5zHWU$GW6LW" role="2Vcluh">
              <property role="2Vclpx" value="1028.0" />
              <property role="2Vclpz" value="327.8999938964844" />
            </node>
            <node concept="2VclrF" id="5zHWU$GW6LX" role="2Vcluh">
              <property role="2Vclpx" value="1028.0" />
              <property role="2Vclpz" value="267.0" />
            </node>
          </node>
        </node>
        <node concept="2EWCuP" id="5zHWU$G_Sw_" role="5JtDH">
          <node concept="2EWCuO" id="5zHWU$G_SwA" role="2EWCuL">
            <ref role="XcPQd" node="5zHWU$GzTiA" resolve="pwmBackward" />
            <ref role="2EWCuR" node="5zHWU$G_QGL" resolve="rightMotor" />
          </node>
          <node concept="2EWCuO" id="5zHWU$G_SwB" role="2EWCuK">
            <ref role="2EWCuR" node="5zHWU$G_QXg" resolve="timer3" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXal" resolve="pinA" />
          </node>
          <node concept="2VclpC" id="5zHWU$GDLRd" role="lGtFl" />
        </node>
        <node concept="JAGxh" id="2t4Dw6aEIdv" role="5JtDH" />
        <node concept="2EWCuV" id="2t4Dw6aEIl$" role="5JtDH">
          <property role="TrG5h" value="uart" />
          <ref role="2EWCuU" to="azo0:oDdAT4olTx" resolve="AvrSerialInterface" />
        </node>
        <node concept="5GgzA" id="2uTv4B9$w_b" role="5JtDH">
          <ref role="5GgyZ" node="2uTv4B9$vAG" resolve="isrReceive" />
          <ref role="5GdT5" node="2t4Dw6aEIl$" resolve="uart" />
          <ref role="5GdT6" to="azo0:2uTv4B9$vAG" resolve="isrReceive" />
        </node>
        <node concept="5GgzA" id="2uTv4B9$wIR" role="5JtDH">
          <ref role="5GgyZ" node="2uTv4B9$vAH" resolve="isrTransmit" />
          <ref role="5GdT5" node="2t4Dw6aEIl$" resolve="uart" />
          <ref role="5GdT6" to="azo0:2uTv4B9$vAH" resolve="isrTransmit" />
        </node>
        <node concept="JAGxh" id="5MdZHRto09G" role="5JtDH" />
        <node concept="2EWCuV" id="5MdZHRto5zd" role="5JtDH">
          <property role="TrG5h" value="portF" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXgl" resolve="AvrPort" />
          <node concept="3R_36c" id="5MdZHRto5A8" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXgn" resolve="outputRegister" />
            <node concept="YInwV" id="5MdZHRto65o" role="3R_36e">
              <node concept="3V49S3" id="5MdZHRto5BV" role="1_9fRO">
                <ref role="3V49S0" to="bs9u:74TmcPkYZcX" resolve="PORTF" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="5MdZHRto5A9" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXgq" resolve="inputRegister" />
            <node concept="YInwV" id="5MdZHRto66h" role="3R_36e">
              <node concept="3V49S3" id="5MdZHRto5Kt" role="1_9fRO">
                <ref role="3V49S0" to="bs9u:74TmcPkYZcW" resolve="PINF" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="5MdZHRto5Aa" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXgt" resolve="configRegister" />
            <node concept="YInwV" id="5MdZHRto67a" role="3R_36e">
              <node concept="3V49S3" id="5MdZHRto5M9" role="1_9fRO">
                <ref role="3V49S0" to="bs9u:74TmcPkYZcV" resolve="DDRF" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5MdZHRto0vz" role="5JtDH">
          <property role="TrG5h" value="leftWheelSensor" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXfl" resolve="AvrDigitalPin" />
          <node concept="3R_36c" id="5MdZHRto4q1" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXfp" resolve="pinNo" />
            <node concept="3TlMh9" id="5MdZHRto5cj" role="3R_36e">
              <property role="2hmy$m" value="7" />
            </node>
          </node>
        </node>
        <node concept="2EWCuP" id="5MdZHRto5Zq" role="5JtDH">
          <node concept="2EWCuO" id="5MdZHRto5Zr" role="2EWCuL">
            <ref role="2EWCuR" node="5MdZHRto0vz" resolve="leftWheelSensor" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXfn" resolve="port" />
          </node>
          <node concept="2EWCuO" id="5MdZHRto5Zt" role="2EWCuK">
            <ref role="2EWCuR" node="5MdZHRto5zd" resolve="portF" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXgm" resolve="port" />
          </node>
        </node>
        <node concept="JAGxh" id="5MdZHRto5tx" role="5JtDH" />
        <node concept="2EWCuV" id="5MdZHRto6Y4" role="5JtDH">
          <property role="TrG5h" value="portD" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXgl" resolve="AvrPort" />
          <node concept="3R_36c" id="5MdZHRto6Y5" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXgn" resolve="outputRegister" />
            <node concept="YInwV" id="5MdZHRto6Y6" role="3R_36e">
              <node concept="3V49S3" id="5MdZHRto76B" role="1_9fRO">
                <ref role="3V49S0" to="bs9u:2XT_MLHaQyK" resolve="PORTD" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="5MdZHRto6Y8" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXgq" resolve="inputRegister" />
            <node concept="YInwV" id="5MdZHRto6Y9" role="3R_36e">
              <node concept="3V49S3" id="5MdZHRto77N" role="1_9fRO">
                <ref role="3V49S0" to="bs9u:2XT_MLHaQGD" resolve="PIND" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="5MdZHRto6Yb" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXgt" resolve="configRegister" />
            <node concept="YInwV" id="5MdZHRto6Yc" role="3R_36e">
              <node concept="3V49S3" id="5MdZHRto78Z" role="1_9fRO">
                <ref role="3V49S0" to="bs9u:2XT_MLHaQQz" resolve="DDRD" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="5MdZHRto6Ye" role="5JtDH">
          <property role="TrG5h" value="rightWheelSensor" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXfl" resolve="AvrDigitalPin" />
          <node concept="3R_36c" id="5MdZHRto6Yf" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXfp" resolve="pinNo" />
            <node concept="3TlMh9" id="5MdZHRto6Yg" role="3R_36e">
              <property role="2hmy$m" value="4" />
            </node>
          </node>
        </node>
        <node concept="2EWCuP" id="5MdZHRto6Yh" role="5JtDH">
          <node concept="2EWCuO" id="5MdZHRto6Yi" role="2EWCuL">
            <ref role="2EWCuR" node="5MdZHRto6Ye" resolve="rightWheelSensor" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXfn" resolve="port" />
          </node>
          <node concept="2EWCuO" id="5MdZHRto6Yj" role="2EWCuK">
            <ref role="2EWCuR" node="5MdZHRto6Y4" resolve="portD" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXgm" resolve="port" />
          </node>
        </node>
        <node concept="JAGxh" id="5MdZHRto680" role="5JtDH" />
        <node concept="2EWCuV" id="5MdZHRtBTOL" role="5JtDH">
          <property role="TrG5h" value="tk2" />
          <ref role="2EWCuU" to="bs9u:74TmcPjVXfl" resolve="AvrDigitalPin" />
          <node concept="3R_36c" id="5MdZHRtBTOM" role="3R_39I">
            <ref role="3R_36f" to="bs9u:74TmcPjVXfp" resolve="pinNo" />
            <node concept="3TlMh9" id="5MdZHRtBTON" role="3R_36e">
              <property role="2hmy$m" value="6" />
            </node>
          </node>
        </node>
        <node concept="2EWCuP" id="5MdZHRtBTOO" role="5JtDH">
          <node concept="2EWCuO" id="5MdZHRtBTOP" role="2EWCuL">
            <ref role="2EWCuR" node="5MdZHRtBTOL" resolve="tk2" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXfn" resolve="port" />
          </node>
          <node concept="2EWCuO" id="5MdZHRtBTOQ" role="2EWCuK">
            <ref role="2EWCuR" node="5MdZHRto5zd" resolve="portF" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXgm" resolve="port" />
          </node>
        </node>
        <node concept="JAGxh" id="5MdZHRtDTb0" role="5JtDH" />
        <node concept="2EWCuV" id="7mELSK4gM6h" role="5JtDH">
          <property role="TrG5h" value="leftWheelController" />
          <ref role="2EWCuU" node="7tTb7FvGDaV" resolve="WheelController" />
        </node>
        <node concept="2EWCuP" id="7mELSK4gNo7" role="5JtDH">
          <node concept="2EWCuO" id="7mELSK4gNo8" role="2EWCuL">
            <ref role="2EWCuR" node="7mELSK4gM6h" resolve="leftWheelController" />
            <ref role="XcPQd" node="7mELSK4gBLz" resolve="sensorPin" />
          </node>
          <node concept="2EWCuO" id="7mELSK4gNoa" role="2EWCuK">
            <ref role="2EWCuR" node="5MdZHRto0vz" resolve="leftWheelSensor" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXfm" resolve="pin" />
          </node>
        </node>
        <node concept="2EWCuP" id="7mELSK4gNch" role="5JtDH">
          <node concept="2EWCuO" id="7mELSK4gNci" role="2EWCuL">
            <ref role="2EWCuR" node="7mELSK4gM6h" resolve="leftWheelController" />
            <ref role="XcPQd" node="7mELSK4gpw4" resolve="motor" />
          </node>
          <node concept="2EWCuO" id="7mELSK4gNck" role="2EWCuK">
            <ref role="2EWCuR" node="5zHWU$G_QF2" resolve="leftMotor" />
            <ref role="XcPQd" node="5zHWU$GzTuP" resolve="motor" />
          </node>
        </node>
        <node concept="2EWCuV" id="7mELSK4gMtN" role="5JtDH">
          <property role="TrG5h" value="rightWheelController" />
          <ref role="2EWCuU" node="7tTb7FvGDaV" resolve="WheelController" />
        </node>
        <node concept="2EWCuP" id="7mELSK4gOxI" role="5JtDH">
          <node concept="2EWCuO" id="7mELSK4gOxJ" role="2EWCuL">
            <ref role="2EWCuR" node="7mELSK4gMtN" resolve="rightWheelController" />
            <ref role="XcPQd" node="7mELSK4gBLz" resolve="sensorPin" />
          </node>
          <node concept="2EWCuO" id="7mELSK4gOxL" role="2EWCuK">
            <ref role="2EWCuR" node="5MdZHRto6Ye" resolve="rightWheelSensor" />
            <ref role="XcPQd" to="bs9u:74TmcPjVXfm" resolve="pin" />
          </node>
        </node>
        <node concept="2EWCuP" id="7mELSK4gOlt" role="5JtDH">
          <node concept="2EWCuO" id="7mELSK4gOlu" role="2EWCuL">
            <ref role="2EWCuR" node="7mELSK4gMtN" resolve="rightWheelController" />
            <ref role="XcPQd" node="7mELSK4gpw4" resolve="motor" />
          </node>
          <node concept="2EWCuO" id="7mELSK4gOlw" role="2EWCuK">
            <ref role="2EWCuR" node="5zHWU$G_QGL" resolve="rightMotor" />
            <ref role="XcPQd" node="5zHWU$GzTuP" resolve="motor" />
          </node>
        </node>
        <node concept="37mRI7" id="5zHWU$GwxsN" role="lGtFl">
          <node concept="37mRIm" id="5zHWU$GwxsO" role="37mRID">
            <property role="37mO49" value="261691138174818089" />
            <node concept="gqqVs" id="5zHWU$GwxsM" role="37mO4d">
              <property role="gqqTZ" value="12.000100135803223" />
              <property role="gqqTW" value="12.0" />
              <property role="gqqTX" value="94.0" />
              <property role="gqqTy" value="21.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GwxsW" role="37mRID">
            <property role="37mO49" value="261691138174833438" />
            <node concept="2VclpC" id="5zHWU$GwxsV" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GwxsX" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GwxsY" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GwxsZ" role="3wpmZR">
                    <property role="2Vclpx" value="-42.00000762939453" />
                    <property role="2Vclpz" value="-12.999999618530275" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$Gwxt0" role="3wpmZP">
                    <property role="2Vclpx" value="462.0001907348633" />
                    <property role="2Vclpz" value="37.45000038146973" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$Gwxt1" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$Gwxt2" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$Gwxt3" role="3wpmZR">
                    <property role="2Vclpx" value="-254.7176778554189" />
                    <property role="2Vclpz" value="-19.75409394419125" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$Gwxt4" role="3wpmZP">
                    <property role="2Vclpx" value="384.4854797384964" />
                    <property role="2Vclpz" value="37.45000070287753" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$Gwxt5" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$Gwxt6" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$Gwxt7" role="3wpmZR">
                    <property role="2Vclpx" value="-537.2827036143077" />
                    <property role="2Vclpz" value="4.404093181251788" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$Gwxt8" role="3wpmZP">
                    <property role="2Vclpx" value="539.5149017312302" />
                    <property role="2Vclpz" value="37.450000060061925" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$Gwxta" role="37mRID">
            <property role="37mO49" value="261691138174833402" />
            <node concept="2VclpC" id="5zHWU$Gwxt9" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$Gwxtb" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$Gwxtc" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$Gwxtd" role="3wpmZR">
                    <property role="2Vclpx" value="-3.9999008178710938" />
                    <property role="2Vclpz" value="-16.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$Gwxte" role="3wpmZP">
                    <property role="2Vclpx" value="160.0000991821289" />
                    <property role="2Vclpz" value="37.45000076293945" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$Gwxtf" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$Gwxtg" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$Gwxth" role="3wpmZR">
                    <property role="2Vclpx" value="-134.97056274847714" />
                    <property role="2Vclpz" value="-22.450000762939453" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$Gwxti" role="3wpmZP">
                    <property role="2Vclpx" value="120.48528137423857" />
                    <property role="2Vclpz" value="37.45000076293945" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$Gwxtj" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$Gwxtk" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$Gwxtl" role="3wpmZR">
                    <property role="2Vclpx" value="-197.02963561578065" />
                    <property role="2Vclpz" value="-22.450000762939453" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$Gwxtm" role="3wpmZP">
                    <property role="2Vclpx" value="199.51491699001923" />
                    <property role="2Vclpz" value="37.45000076293945" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLPm" role="37mRID">
            <property role="37mO49" value="6408045752741227015" />
            <node concept="2VclpC" id="5zHWU$GDLPl" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLPn" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLPo" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPp" role="3wpmZR">
                    <property role="2Vclpx" value="-28.0" />
                    <property role="2Vclpz" value="-13.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPq" role="3wpmZP">
                    <property role="2Vclpx" value="253.0" />
                    <property role="2Vclpz" value="334.45001220703125" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLPr" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLPs" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPt" role="3wpmZR">
                    <property role="2Vclpx" value="-52.970562748477164" />
                    <property role="2Vclpz" value="-319.45001220703125" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPu" role="3wpmZP">
                    <property role="2Vclpx" value="189.48528137423858" />
                    <property role="2Vclpz" value="334.45001220703125" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLPv" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLPw" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPx" role="3wpmZR">
                    <property role="2Vclpx" value="-314.02943725152284" />
                    <property role="2Vclpz" value="-319.45001220703125" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPy" role="3wpmZP">
                    <property role="2Vclpx" value="316.5147186257614" />
                    <property role="2Vclpz" value="334.45001220703125" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLP$" role="37mRID">
            <property role="37mO49" value="6408045752741227078" />
            <node concept="2VclpC" id="5zHWU$GDLPz" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLP_" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLPA" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPB" role="3wpmZR">
                    <property role="2Vclpx" value="25.0" />
                    <property role="2Vclpz" value="-35.83750152588041" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPC" role="3wpmZP">
                    <property role="2Vclpx" value="470.0" />
                    <property role="2Vclpz" value="203.2874984741226" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLPD" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLPE" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPF" role="3wpmZR">
                    <property role="2Vclpx" value="-371.87975909919123" />
                    <property role="2Vclpz" value="-317.8306260862644" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPG" role="3wpmZP">
                    <property role="2Vclpx" value="459.4852813742386" />
                    <property role="2Vclpz" value="321.62500513413994" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLPH" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLPI" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPJ" role="3wpmZR">
                    <property role="2Vclpx" value="-573.6202409008088" />
                    <property role="2Vclpz" value="-167.069375388481" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPK" role="3wpmZP">
                    <property role="2Vclpx" value="576.0147186257615" />
                    <property role="2Vclpz" value="180.4499969482422" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLPP" role="37mRID">
            <property role="37mO49" value="6408045752741227116" />
            <node concept="2VclpC" id="5zHWU$GDLPO" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLPQ" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLPR" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPS" role="3wpmZR">
                    <property role="2Vclpx" value="-21.0" />
                    <property role="2Vclpz" value="1.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPT" role="3wpmZP">
                    <property role="2Vclpx" value="516.0" />
                    <property role="2Vclpz" value="337.45001220703125" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLPU" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLPV" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLPW" role="3wpmZR">
                    <property role="2Vclpx" value="-371.96554967292496" />
                    <property role="2Vclpz" value="-319.83107189910197" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLPX" role="3wpmZP">
                    <property role="2Vclpx" value="459.4852813742386" />
                    <property role="2Vclpz" value="337.45001220703125" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLPY" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLPZ" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQ0" role="3wpmZR">
                    <property role="2Vclpx" value="-570.0344503270752" />
                    <property role="2Vclpz" value="-322.06895251496053" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQ1" role="3wpmZP">
                    <property role="2Vclpx" value="572.5147186257616" />
                    <property role="2Vclpz" value="337.45001220703125" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLQ3" role="37mRID">
            <property role="37mO49" value="6408045752741227428" />
            <node concept="2VclpC" id="5zHWU$GDLQ2" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLQ4" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLQ5" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQ6" role="3wpmZR">
                    <property role="2Vclpx" value="-22.916656494140625" />
                    <property role="2Vclpz" value="-13.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQ7" role="3wpmZP">
                    <property role="2Vclpx" value="794.9166564941406" />
                    <property role="2Vclpz" value="180.4499969482422" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQ8" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQ9" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQa" role="3wpmZR">
                    <property role="2Vclpx" value="-631.470562748477" />
                    <property role="2Vclpz" value="-165.4499969482422" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQb" role="3wpmZP">
                    <property role="2Vclpx" value="732.9852813742385" />
                    <property role="2Vclpz" value="180.4499969482422" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQc" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQd" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQe" role="3wpmZR">
                    <property role="2Vclpx" value="-854.029437251523" />
                    <property role="2Vclpz" value="-152.27499389648438" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQf" role="3wpmZP">
                    <property role="2Vclpx" value="856.8480316140427" />
                    <property role="2Vclpz" value="180.4499969482422" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLQh" role="37mRID">
            <property role="37mO49" value="6408045752741227482" />
            <node concept="2VclpC" id="5zHWU$GDLQg" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLQi" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLQj" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQk" role="3wpmZR">
                    <property role="2Vclpx" value="-21.0" />
                    <property role="2Vclpz" value="-13.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQl" role="3wpmZP">
                    <property role="2Vclpx" value="793.0" />
                    <property role="2Vclpz" value="337.45001220703125" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQm" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQn" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQo" role="3wpmZR">
                    <property role="2Vclpx" value="-627.970562748477" />
                    <property role="2Vclpz" value="-322.4500090939629" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQp" role="3wpmZP">
                    <property role="2Vclpx" value="736.4852813742385" />
                    <property role="2Vclpz" value="337.45001220703125" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQq" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQr" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQs" role="3wpmZR">
                    <property role="2Vclpx" value="-847.029437251523" />
                    <property role="2Vclpz" value="-314.27500915527344" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQt" role="3wpmZP">
                    <property role="2Vclpx" value="849.5147186257615" />
                    <property role="2Vclpz" value="337.45001220703125" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLQv" role="37mRID">
            <property role="37mO49" value="6408045752741228675" />
            <node concept="2VclpC" id="5zHWU$GDLQu" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLQw" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLQx" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQy" role="3wpmZR">
                    <property role="2Vclpx" value="-24.304161071777344" />
                    <property role="2Vclpz" value="-12.999996948242185" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQz" role="3wpmZP">
                    <property role="2Vclpx" value="1077.3041610717773" />
                    <property role="2Vclpz" value="125.99999694824218" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQ$" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQ_" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQA" role="3wpmZR">
                    <property role="2Vclpx" value="-911.861111602138" />
                    <property role="2Vclpz" value="-150.49766870111432" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQB" role="3wpmZP">
                    <property role="2Vclpx" value="1013.8185943625198" />
                    <property role="2Vclpz" value="170.89999540618848" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQC" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQD" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQE" role="3wpmZR">
                    <property role="2Vclpx" value="-1135.138888397862" />
                    <property role="2Vclpz" value="-157.95232609132057" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQF" role="3wpmZP">
                    <property role="2Vclpx" value="1137.5147186257616" />
                    <property role="2Vclpz" value="174.17500176822284" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLQM" role="37mRID">
            <property role="37mO49" value="6408045752741234565" />
            <node concept="2VclpC" id="5zHWU$GDLQL" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLQN" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLQO" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQP" role="3wpmZR">
                    <property role="2Vclpx" value="-22.666656494140625" />
                    <property role="2Vclpz" value="-13.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQQ" role="3wpmZP">
                    <property role="2Vclpx" value="1075.6666564941406" />
                    <property role="2Vclpz" value="189.9999984741211" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQR" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQS" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQT" role="3wpmZR">
                    <property role="2Vclpx" value="-911.861111602138" />
                    <property role="2Vclpz" value="-154.0523179890727" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQU" role="3wpmZP">
                    <property role="2Vclpx" value="1013.8185943625198" />
                    <property role="2Vclpz" value="189.9999972377983" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLQV" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLQW" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLQX" role="3wpmZR">
                    <property role="2Vclpx" value="-1135.1388883978618" />
                    <property role="2Vclpz" value="-186.04767538734615" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLQY" role="3wpmZP">
                    <property role="2Vclpx" value="1137.5147186257614" />
                    <property role="2Vclpz" value="189.9999997104439" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLR0" role="37mRID">
            <property role="37mO49" value="6408045752741234642" />
            <node concept="2VclpC" id="5zHWU$GDLQZ" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLR1" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLR2" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLR3" role="3wpmZR">
                    <property role="2Vclpx" value="5.949996948245598" />
                    <property role="2Vclpz" value="-12.9999984741211" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLR4" role="3wpmZP">
                    <property role="2Vclpx" value="1047.0500030517544" />
                    <property role="2Vclpz" value="267.0" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLR5" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLR6" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLR7" role="3wpmZR">
                    <property role="2Vclpx" value="-904.905637053045" />
                    <property role="2Vclpz" value="-312.90506261420353" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLR8" role="3wpmZP">
                    <property role="2Vclpx" value="1017.4852813742385" />
                    <property role="2Vclpz" value="327.9000015976943" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLR9" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLRa" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLRb" role="3wpmZR">
                    <property role="2Vclpx" value="-1135.0943629469548" />
                    <property role="2Vclpz" value="-253.36993349280493" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLRc" role="3wpmZP">
                    <property role="2Vclpx" value="1137.5147186257614" />
                    <property role="2Vclpz" value="267.0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="5zHWU$GDLRh" role="37mRID">
            <property role="37mO49" value="6408045752741234725" />
            <node concept="2VclpC" id="5zHWU$GDLRg" role="37mO4d">
              <node concept="3ul5H1" id="5zHWU$GDLRi" role="3ul5Gx">
                <property role="3ul5GH" value="label" />
                <node concept="3wpmZ1" id="5zHWU$GDLRj" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLRk" role="3wpmZR">
                    <property role="2Vclpx" value="-24.5" />
                    <property role="2Vclpz" value="1.0" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLRl" role="3wpmZP">
                    <property role="2Vclpx" value="1077.5" />
                    <property role="2Vclpz" value="347.0000061035156" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLRm" role="3ul5Gx">
                <property role="3ul5GH" value="startRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLRn" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLRo" role="3wpmZR">
                    <property role="2Vclpx" value="-904.9669874599159" />
                    <property role="2Vclpz" value="-314.5968349393818" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLRp" role="3wpmZP">
                    <property role="2Vclpx" value="1017.4852813742383" />
                    <property role="2Vclpz" value="347.00001102030456" />
                  </node>
                </node>
              </node>
              <node concept="3ul5H1" id="5zHWU$GDLRq" role="3ul5Gx">
                <property role="3ul5GH" value="endRole" />
                <node concept="3wpmZ1" id="5zHWU$GDLRr" role="3ul5Gz">
                  <node concept="2VclrF" id="5zHWU$GDLRs" role="3wpmZR">
                    <property role="2Vclpx" value="-1135.0330125400815" />
                    <property role="2Vclpz" value="-331.6781854959338" />
                  </node>
                  <node concept="2VclrF" id="5zHWU$GDLRt" role="3wpmZP">
                    <property role="2Vclpx" value="1137.5147186257616" />
                    <property role="2Vclpz" value="347.0000011867267" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="5MdZHRtE3h5" role="2RW2fA" />
      <node concept="2EWDwb" id="5MdZHRtBSG_" role="2RW2fA">
        <property role="TrG5h" value="isrTimer1Ovf" />
        <node concept="3XIRFW" id="5MdZHRtBSGA" role="2EWMhI">
          <node concept="1_9egQ" id="5MdZHRtE3dI" role="3XIRFZ">
            <node concept="3TM6Ez" id="7tTb7FtAJOl" role="1_9egR">
              <node concept="EbZIE" id="5MdZHRtE3dG" role="1_9fRO">
                <ref role="EbZID" node="5MdZHRtE2nN" resolve="timer1Interrupts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="5MdZHRtBTiX" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3_ZiP3" id="5MdZHRtBTln" role="2EWDeT" />
      </node>
      <node concept="3Khz0B" id="5MdZHRtBS6v" role="2RW2fA" />
      <node concept="2EWDwb" id="2uTv4B9$zMh" role="2RW2fA">
        <property role="TrG5h" value="isrReceiveRunnable" />
        <node concept="3XIRFW" id="2uTv4B9$zMi" role="2EWMhI">
          <node concept="1_9egQ" id="2uTv4B9$$La" role="3XIRFZ">
            <node concept="3LAlOK" id="2uTv4B9$$P7" role="1_9egR">
              <ref role="2H6Oet" to="azo0:2uTv4B9$p_5" resolve="isr" />
              <node concept="1DnYEe" id="2uTv4B9$$L9" role="1_9fRO">
                <ref role="1DnYF2" node="2t4Dw6aEIl$" resolve="uart" />
                <ref role="1DcY7d" to="azo0:2uTv4B9$vAG" resolve="isrReceive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="2uTv4B9$zZj" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3_ZiP3" id="2uTv4B9$$1g" role="2EWDeT" />
      </node>
      <node concept="3Khz0B" id="2uTv4B9$$1z" role="2RW2fA" />
      <node concept="2EWDwb" id="2uTv4B9$$rl" role="2RW2fA">
        <property role="TrG5h" value="isrTransmitRunnable" />
        <node concept="3XIRFW" id="2uTv4B9$$rm" role="2EWMhI">
          <node concept="1_9egQ" id="2uTv4B9$$PZ" role="3XIRFZ">
            <node concept="3LAlOK" id="2uTv4B9$$TW" role="1_9egR">
              <ref role="2H6Oet" to="azo0:2uTv4B9$p_5" resolve="isr" />
              <node concept="1DnYEe" id="2uTv4B9$$PY" role="1_9fRO">
                <ref role="1DnYF2" node="2t4Dw6aEIl$" resolve="uart" />
                <ref role="1DcY7d" to="azo0:2uTv4B9$vAH" resolve="isrTransmit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="2uTv4B9$$CD" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3_ZiP3" id="2uTv4B9$$EA" role="2EWDeT" />
      </node>
      <node concept="3Khz0B" id="7tTb7FvrIJr" role="2RW2fA" />
      <node concept="2EWDwb" id="2XT_MLH9bj$" role="2RW2fA">
        <property role="TrG5h" value="runnable0_run" />
        <node concept="3XIRFW" id="2XT_MLH9bj_" role="2EWMhI">
          <node concept="6qOI8" id="7tWSY$PnSqI" role="3XIRFZ">
            <property role="1Onm7i" value="true" />
            <ref role="6qOXx" node="7tWSY$PnLui" resolve="sched" />
          </node>
        </node>
        <node concept="2EWDw0" id="2XT_MLH9bAn" role="2EWDeT">
          <ref role="1ZwSu5" node="exHFgzLLsD" resolve="runnable0" />
          <ref role="1ZwxE2" to="ec8n:exHFgzK8US" resolve="run" />
        </node>
        <node concept="19Rifw" id="2XT_MLH9bB9" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="3Khz0B" id="7tTb7FvshEB" role="2RW2fA" />
      <node concept="1AFJ9z" id="7tWSY$PnLug" role="2RW2fA">
        <node concept="6qQRg" id="7tWSY$PnLui" role="1AFIYE">
          <property role="TrG5h" value="sched" />
          <node concept="1NgRL0" id="7tWSY$PnLMI" role="6qQK8">
            <property role="3_dPry" value="1" />
            <node concept="6VUUj" id="7tWSY$PnLMK" role="6EqoZ">
              <property role="6VZRi" value="us" />
              <node concept="4ZOvp" id="7tWSY$PnS2W" role="6VY68">
                <ref role="2DPCA0" node="7tWSY$PnOOu" resolve="TIMER_PERIOD_US" />
              </node>
            </node>
            <node concept="1A7_vw" id="7tWSY$PnLN4" role="1A7$0i">
              <ref role="1A7_v$" node="7tWSY$PnIn0" resolve="wheelControllers" />
            </node>
          </node>
          <node concept="3_amfM" id="7tWSY$PnLNm" role="6qQK8">
            <property role="3_dPry" value="2" />
            <node concept="1A7_vw" id="7tWSY$PnLNA" role="1A7$0i">
              <ref role="1A7_v$" node="7tWSY$PnCLI" resolve="motorsTask" />
            </node>
          </node>
          <node concept="3_amfM" id="7tWSY$PnLNW" role="6qQK8">
            <property role="3_dPry" value="3" />
            <node concept="1A7_vw" id="7tWSY$PnLOg" role="1A7$0i">
              <ref role="1A7_v$" node="7tWSY$PnExu" resolve="receiveDataTask" />
            </node>
          </node>
          <node concept="3_amfM" id="7tWSY$PnLOE" role="6qQK8">
            <property role="3_dPry" value="4" />
            <node concept="1A7_vw" id="7tWSY$PnLP2" role="1A7$0i">
              <ref role="1A7_v$" node="7tWSY$PnGgz" resolve="sendDataTask" />
            </node>
          </node>
          <node concept="3_amfM" id="7tWSY$PnLMx" role="6qQK8">
            <property role="3_dPry" value="5" />
            <node concept="1A7_vw" id="7tWSY$PnLM$" role="1A7$0i">
              <ref role="1A7_v$" node="7tWSY$PnJmJ" resolve="timeTask" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tWSY$PnLa4" role="2RW2fA" />
      <node concept="aynXw" id="7tWSY$PnJmH" role="2RW2fA">
        <node concept="1iAVhs" id="7tWSY$PnJmJ" role="aynXL">
          <property role="2OOxQR" value="true" />
          <property role="TrG5h" value="timeTask" />
          <node concept="3JSqjV" id="7tWSY$PnJGt" role="3JZT99" />
          <node concept="3XIRFW" id="7tWSY$PnJmM" role="1iABvq">
            <node concept="1_9egQ" id="7tWSY$PnKCM" role="3XIRFZ">
              <node concept="3LAlOK" id="7tWSY$PnKCN" role="1_9egR">
                <ref role="2H6Oet" to="t6m2:5zHWU$Guqal" resolve="write" />
                <node concept="1DnYEe" id="7tWSY$PnKCO" role="1_9fRO">
                  <ref role="1DnYF2" node="5MdZHRtBTOL" resolve="tk2" />
                  <ref role="1DcY7d" to="bs9u:74TmcPjVXfm" resolve="pin" />
                </node>
                <node concept="3LAlOK" id="7tWSY$PnKCP" role="2H6KYo">
                  <ref role="2H6Oet" to="t6m2:5zHWU$GuxJ$" resolve="read" />
                  <node concept="1DnYEe" id="7tWSY$PnKCQ" role="1_9fRO">
                    <ref role="1DnYF2" node="5MdZHRto6Ye" resolve="rightWheelSensor" />
                    <ref role="1DcY7d" to="bs9u:74TmcPjVXfm" resolve="pin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="27v$Wf" id="7tWSY$PnJYs" role="3XIRFZ">
              <node concept="3XIRFW" id="7tWSY$PnJYt" role="27v$W9">
                <node concept="1_9egQ" id="7tWSY$PnJHY" role="3XIRFZ">
                  <node concept="1FldXs" id="7tWSY$PnJHZ" role="1_9egR">
                    <node concept="EbZIE" id="7tWSY$PnJI0" role="1_9fRO">
                      <ref role="EbZID" node="5MdZHRtE2nN" resolve="timer1Interrupts" />
                    </node>
                  </node>
                </node>
                <node concept="1_9egQ" id="7tWSY$PnJI9" role="3XIRFZ">
                  <node concept="TPXPH" id="7tWSY$PnJIa" role="1_9egR">
                    <node concept="4ZOvp" id="7tWSY$PnSjX" role="3TlMhJ">
                      <ref role="2DPCA0" node="7tWSY$PnOOu" resolve="TIMER_PERIOD_US" />
                    </node>
                    <node concept="1S7827" id="7tWSY$PnJIe" role="3TlMhI">
                      <ref role="1S7826" node="7tWSY$PnlXP" resolve="currentTimeUS" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tl9Jr" id="7tWSY$PnJZj" role="27v$We">
                <node concept="3TlMh9" id="7tWSY$PnJZk" role="3TlMhJ">
                  <property role="2hmy$m" value="0" />
                </node>
                <node concept="EbZIE" id="7tWSY$PnJZl" role="3TlMhI">
                  <ref role="EbZID" node="5MdZHRtE2nN" resolve="timer1Interrupts" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tWSY$PnJ19" role="2RW2fA" />
      <node concept="aynXw" id="7tWSY$PnImY" role="2RW2fA">
        <node concept="1iAVhs" id="7tWSY$PnIn0" role="aynXL">
          <property role="2OOxQR" value="true" />
          <property role="TrG5h" value="wheelControllers" />
          <node concept="3JZT9E" id="7tWSY$PnIn1" role="3JZT99" />
          <node concept="3XIRFW" id="7tWSY$PnIn3" role="1iABvq">
            <node concept="1_9egQ" id="7tWSY$PnIGz" role="3XIRFZ">
              <node concept="3LAlOK" id="7tWSY$PnIG$" role="1_9egR">
                <ref role="2H6Oet" to="ec8n:exHFgzK8US" resolve="run" />
                <node concept="1DnYEe" id="7tWSY$PnIG_" role="1_9fRO">
                  <ref role="1DcY7d" node="7tTb7FvGFEI" resolve="clock490Hz" />
                  <ref role="1DnYF2" node="7mELSK4gM6h" resolve="leftWheelController" />
                </node>
              </node>
            </node>
            <node concept="1_9egQ" id="7tWSY$PnIGA" role="3XIRFZ">
              <node concept="3LAlOK" id="7tWSY$PnIGB" role="1_9egR">
                <ref role="2H6Oet" to="ec8n:exHFgzK8US" resolve="run" />
                <node concept="1DnYEe" id="7tWSY$PnIGC" role="1_9fRO">
                  <ref role="1DnYF2" node="7mELSK4gMtN" resolve="rightWheelController" />
                  <ref role="1DcY7d" node="7tTb7FvGFEI" resolve="clock490Hz" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tWSY$PnI22" role="2RW2fA" />
      <node concept="aynXw" id="7tWSY$PnCLG" role="2RW2fA">
        <node concept="1iAVhs" id="7tWSY$PnCLI" role="aynXL">
          <property role="2OOxQR" value="true" />
          <property role="TrG5h" value="motorsTask" />
          <node concept="3JSqjV" id="7tWSY$PnD6O" role="3JZT99" />
          <node concept="3XIRFW" id="7tWSY$PnCLL" role="1iABvq">
            <node concept="1_9egQ" id="7mELSK4gZCF" role="3XIRFZ">
              <node concept="3LAlOK" id="7mELSK4gZYh" role="1_9egR">
                <ref role="2H6Oet" to="ec8n:exHFgzK8US" resolve="run" />
                <node concept="1DnYEe" id="7mELSK4gZCE" role="1_9fRO">
                  <ref role="1DnYF2" node="7mELSK4gM6h" resolve="leftWheelController" />
                  <ref role="1DcY7d" node="7mELSK4gjIA" resolve="mainLoop" />
                </node>
              </node>
            </node>
            <node concept="1_9egQ" id="7mELSK4h0hj" role="3XIRFZ">
              <node concept="3LAlOK" id="7mELSK4h0Ba" role="1_9egR">
                <ref role="2H6Oet" to="ec8n:exHFgzK8US" resolve="run" />
                <node concept="1DnYEe" id="7mELSK4h0hi" role="1_9fRO">
                  <ref role="1DnYF2" node="7mELSK4gMtN" resolve="rightWheelController" />
                  <ref role="1DcY7d" node="7mELSK4gjIA" resolve="mainLoop" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tWSY$PnCsM" role="2RW2fA" />
      <node concept="aynXw" id="7tWSY$PnExs" role="2RW2fA">
        <node concept="1iAVhs" id="7tWSY$PnExu" role="aynXL">
          <property role="2OOxQR" value="true" />
          <property role="TrG5h" value="receiveDataTask" />
          <node concept="3JSqjV" id="7tWSY$PnII9" role="3JZT99" />
          <node concept="3XIRFW" id="7tWSY$PnExx" role="1iABvq">
            <node concept="c0U19" id="2XT_MLH9bD5" role="3XIRFZ">
              <node concept="3XIRFW" id="2XT_MLH9bD6" role="c0U17">
                <node concept="1_a8vi" id="WklGGYAhVU" role="3XIRFZ">
                  <node concept="3XIRFW" id="WklGGYAhVV" role="1_amYn">
                    <node concept="1_9egQ" id="WklGGYAjy5" role="3XIRFZ">
                      <node concept="3pqW6w" id="WklGGYAkns" role="1_9egR">
                        <node concept="3LAlOK" id="WklGGYAlbX" role="3TlMhJ">
                          <ref role="2H6Oet" to="azo0:2t4Dw6aDu1q" resolve="readByte" />
                          <node concept="1DnYEe" id="WklGGYAkP1" role="1_9fRO">
                            <ref role="1DnYF2" node="2t4Dw6aEIl$" resolve="uart" />
                            <ref role="1DcY7d" to="azo0:2t4Dw6aD3kT" resolve="receiveBuffer" />
                          </node>
                        </node>
                        <node concept="3wxyx2" id="WklGGYAka6" role="3TlMhI">
                          <node concept="2BPB98" id="WklGGYAjZ8" role="1_9fRO">
                            <node concept="2BOciq" id="WklGGYAjGU" role="1_9fRO">
                              <node concept="3ZVu4v" id="WklGGYAjGX" role="3TlMhJ">
                                <ref role="3ZVs_2" node="WklGGYAiNL" resolve="i" />
                              </node>
                              <node concept="1S8S4T" id="WklGGYEzBP" role="3TlMhI">
                                <node concept="YInwV" id="WklGGYAjDN" role="1S8S4V">
                                  <node concept="EbZIE" id="5$_GT_vmZRD" role="1_9fRO">
                                    <ref role="EbZID" node="5$_GT_vmUO3" resolve="messageFromControl" />
                                  </node>
                                </node>
                                <node concept="3wxxNl" id="WklGGYE$3B" role="1S8S4N">
                                  <property role="2caQfQ" value="false" />
                                  <property role="2c7vTL" value="false" />
                                  <node concept="26Vqp4" id="WklGGYEzQO" role="2umbIo">
                                    <property role="2caQfQ" value="false" />
                                    <property role="2c7vTL" value="false" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1_amY7" id="WklGGYAiNL" role="1_amZ$">
                    <property role="TrG5h" value="i" />
                    <node concept="26Vqp4" id="WklGGYAiP$" role="2C2TGm">
                      <property role="2caQfQ" value="false" />
                      <property role="2c7vTL" value="false" />
                    </node>
                    <node concept="3TlMh9" id="WklGGYAiR_" role="3XIe9u">
                      <property role="2hmy$m" value="0" />
                    </node>
                  </node>
                  <node concept="3Tl9Jn" id="WklGGYAj78" role="1_amZB">
                    <node concept="Vihyy" id="5$_GT_vmZ2g" role="3TlMhJ">
                      <node concept="EbZIE" id="5$_GT_vmZdc" role="1_9fRO">
                        <ref role="EbZID" node="5$_GT_vmUO3" resolve="messageFromControl" />
                      </node>
                    </node>
                    <node concept="3ZVu4v" id="WklGGYAiT1" role="3TlMhI">
                      <ref role="3ZVs_2" node="WklGGYAiNL" resolve="i" />
                    </node>
                  </node>
                  <node concept="3TM6Ey" id="WklGGYAjdL" role="1_amZy">
                    <node concept="3ZVu4v" id="WklGGYAjcq" role="1_9fRO">
                      <ref role="3ZVs_2" node="WklGGYAiNL" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="3XISUE" id="WklGGYAgNH" role="3XIRFZ" />
                <node concept="1_9egQ" id="WklGGYAeF5" role="3XIRFZ">
                  <node concept="3LAlOK" id="WklGGYAfvJ" role="1_9egR">
                    <ref role="2H6Oet" node="5zHWU$G$6nJ" resolve="setSpeed" />
                    <node concept="1DnYEe" id="WklGGYAeF4" role="1_9fRO">
                      <ref role="1DnYF2" node="5zHWU$G_QyR" resolve="chassis" />
                      <ref role="1DcY7d" node="5zHWU$G$aly" resolve="chassis" />
                    </node>
                    <node concept="2qmXGp" id="7tTb7Fv26Y9" role="2H6KYo">
                      <node concept="1E4Tgc" id="7tTb7Fv273T" role="1ESnxz">
                        <ref role="1E4Tge" to="lj5:2JGF63bDcb4" resolve="speed" />
                      </node>
                      <node concept="EbZIE" id="7tTb7Fv26W5" role="1_9fRO">
                        <ref role="EbZID" node="5$_GT_vmUO3" resolve="messageFromControl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1_9egQ" id="WklGGYAp2s" role="3XIRFZ">
                  <node concept="3LAlOK" id="WklGGYAq5O" role="1_9egR">
                    <ref role="2H6Oet" node="5$_GT_vwEEa" resolve="setRotation" />
                    <node concept="1DnYEe" id="WklGGYAp2r" role="1_9fRO">
                      <ref role="1DnYF2" node="5zHWU$G_QyR" resolve="chassis" />
                      <ref role="1DcY7d" node="5zHWU$G$aly" resolve="chassis" />
                    </node>
                    <node concept="2qmXGp" id="7tTb7Fv276D" role="2H6KYo">
                      <node concept="1E4Tgc" id="7tTb7Fv27dC" role="1ESnxz">
                        <ref role="1E4Tge" to="lj5:5$_GT_vOLGp" resolve="rotation" />
                      </node>
                      <node concept="EbZIE" id="7tTb7Fv275$" role="1_9fRO">
                        <ref role="EbZID" node="5$_GT_vmUO3" resolve="messageFromControl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tl9Jp" id="74TmcPj3qt2" role="c0U16">
                <node concept="3LAlOK" id="74TmcPj3qt5" role="3TlMhI">
                  <ref role="2H6Oet" to="azo0:2t4Dw6aDu1H" resolve="bytesInBuffer" />
                  <node concept="1DnYEe" id="74TmcPj3qt6" role="1_9fRO">
                    <ref role="1DnYF2" node="2t4Dw6aEIl$" resolve="uart" />
                    <ref role="1DcY7d" to="azo0:2t4Dw6aD3kT" resolve="receiveBuffer" />
                  </node>
                </node>
                <node concept="Vihyy" id="5$_GT_vmYQG" role="3TlMhJ">
                  <node concept="EbZIE" id="5$_GT_vmYRq" role="1_9fRO">
                    <ref role="EbZID" node="5$_GT_vmUO3" resolve="messageFromControl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tWSY$PnEc$" role="2RW2fA" />
      <node concept="aynXw" id="7tWSY$PnGgx" role="2RW2fA">
        <node concept="1iAVhs" id="7tWSY$PnGgz" role="aynXL">
          <property role="2OOxQR" value="true" />
          <property role="TrG5h" value="sendDataTask" />
          <node concept="3JSqjV" id="7tWSY$PnIIH" role="3JZT99" />
          <node concept="3XIRFW" id="7tWSY$PnGgA" role="1iABvq">
            <node concept="c0U19" id="7mELSK8G$Mr" role="3XIRFZ">
              <node concept="3XIRFW" id="7mELSK8G$Ms" role="c0U17">
                <node concept="1_9egQ" id="7mELSK8GA85" role="3XIRFZ">
                  <node concept="3pqW6w" id="7mELSK8GAt5" role="1_9egR">
                    <node concept="3LAlOK" id="7mELSK8GB7s" role="3TlMhJ">
                      <ref role="2H6Oet" node="7mELSK8Gh2S" resolve="isWheelBlocked" />
                      <node concept="1DnYEe" id="7mELSK8GAAM" role="1_9fRO">
                        <ref role="1DnYF2" node="7mELSK4gM6h" resolve="leftWheelController" />
                        <ref role="1DcY7d" node="7mELSK4fMjm" resolve="wheelController" />
                      </node>
                    </node>
                    <node concept="2qmXGp" id="7mELSK8GA9B" role="3TlMhI">
                      <node concept="1E4Tgc" id="7mELSK8GAja" role="1ESnxz">
                        <ref role="1E4Tge" to="lj5:7mELSK8FA$2" resolve="leftWheelBlocked" />
                      </node>
                      <node concept="EbZIE" id="7mELSK8GA83" role="1_9fRO">
                        <ref role="EbZID" node="7mELSK8FDJ$" resolve="messageToControl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1_9egQ" id="7mELSK8GB_Z" role="3XIRFZ">
                  <node concept="3pqW6w" id="7mELSK8GBA0" role="1_9egR">
                    <node concept="3LAlOK" id="7mELSK8GBA1" role="3TlMhJ">
                      <ref role="2H6Oet" node="7mELSK8Gh2S" resolve="isWheelBlocked" />
                      <node concept="1DnYEe" id="7mELSK8GBA2" role="1_9fRO">
                        <ref role="1DcY7d" node="7mELSK4fMjm" resolve="wheelController" />
                        <ref role="1DnYF2" node="7mELSK4gMtN" resolve="rightWheelController" />
                      </node>
                    </node>
                    <node concept="2qmXGp" id="7mELSK8GBA3" role="3TlMhI">
                      <node concept="1E4Tgc" id="7mELSK8GBYQ" role="1ESnxz">
                        <ref role="1E4Tge" to="lj5:7mELSK8FA$T" resolve="rightWheelBlocked" />
                      </node>
                      <node concept="EbZIE" id="7mELSK8GBA5" role="1_9fRO">
                        <ref role="EbZID" node="7mELSK8FDJ$" resolve="messageToControl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1_a8vi" id="7mELSK8G$WL" role="3XIRFZ">
                  <node concept="3XIRFW" id="7mELSK8G$WM" role="1_amYn">
                    <node concept="1_9egQ" id="7mELSK8G_wn" role="3XIRFZ">
                      <node concept="3LAlOK" id="7mELSK8G_$O" role="1_9egR">
                        <ref role="2H6Oet" to="azo0:2t4Dw6aDvMc" resolve="writeByte" />
                        <node concept="3wxyx2" id="7mELSK8G_A8" role="2H6KYo">
                          <node concept="2BPB98" id="7mELSK8G_A9" role="1_9fRO">
                            <node concept="2BOciq" id="7mELSK8G_Aa" role="1_9fRO">
                              <node concept="3ZVu4v" id="7mELSK8G_Ab" role="3TlMhJ">
                                <ref role="3ZVs_2" node="7mELSK8G$X0" resolve="i" />
                              </node>
                              <node concept="1S8S4T" id="7mELSK8G_Ac" role="3TlMhI">
                                <node concept="YInwV" id="7mELSK8G_Ad" role="1S8S4V">
                                  <node concept="EbZIE" id="7mELSK8G_Ae" role="1_9fRO">
                                    <ref role="EbZID" node="7mELSK8FDJ$" resolve="messageToControl" />
                                  </node>
                                </node>
                                <node concept="3wxxNl" id="7mELSK8G_Af" role="1S8S4N">
                                  <property role="2caQfQ" value="false" />
                                  <property role="2c7vTL" value="false" />
                                  <node concept="26Vqp4" id="7mELSK8G_Ag" role="2umbIo">
                                    <property role="2caQfQ" value="false" />
                                    <property role="2c7vTL" value="false" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1DnYEe" id="7mELSK8G_wm" role="1_9fRO">
                          <ref role="1DnYF2" node="2t4Dw6aEIl$" resolve="uart" />
                          <ref role="1DcY7d" to="azo0:2t4Dw6aE1X2" resolve="sendBuffer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1_amY7" id="7mELSK8G$X0" role="1_amZ$">
                    <property role="TrG5h" value="i" />
                    <node concept="26Vqp4" id="7mELSK8G$X1" role="2C2TGm">
                      <property role="2caQfQ" value="false" />
                      <property role="2c7vTL" value="false" />
                    </node>
                    <node concept="3TlMh9" id="7mELSK8G$X2" role="3XIe9u">
                      <property role="2hmy$m" value="0" />
                    </node>
                  </node>
                  <node concept="3Tl9Jn" id="7mELSK8G$X3" role="1_amZB">
                    <node concept="Vihyy" id="7mELSK8G$X4" role="3TlMhJ">
                      <node concept="EbZIE" id="7mELSK8G_6e" role="1_9fRO">
                        <ref role="EbZID" node="7mELSK8FDJ$" resolve="messageToControl" />
                      </node>
                    </node>
                    <node concept="3ZVu4v" id="7mELSK8G$X6" role="3TlMhI">
                      <ref role="3ZVs_2" node="7mELSK8G$X0" resolve="i" />
                    </node>
                  </node>
                  <node concept="3TM6Ey" id="7mELSK8G$X7" role="1_amZy">
                    <node concept="3ZVu4v" id="7mELSK8G$X8" role="1_9fRO">
                      <ref role="3ZVs_2" node="7mELSK8G$X0" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TlM44" id="7mELSK8G$TX" role="c0U16">
                <node concept="3TlMh9" id="7mELSK8G$Ui" role="3TlMhJ">
                  <property role="2hmy$m" value="0" />
                </node>
                <node concept="3LAlOK" id="7mELSK8G$RI" role="3TlMhI">
                  <ref role="2H6Oet" to="azo0:2t4Dw6aDu32" resolve="bytesInBuffer" />
                  <node concept="1DnYEe" id="7mELSK8G$MU" role="1_9fRO">
                    <ref role="1DnYF2" node="2t4Dw6aEIl$" resolve="uart" />
                    <ref role="1DcY7d" to="azo0:2t4Dw6aE1X2" resolve="sendBuffer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="74TmcPjcHcm" role="N3F5h">
      <property role="TrG5h" value="empty_1436594738276_9" />
    </node>
    <node concept="N3Fnx" id="74TmcPjcI0P" role="N3F5h">
      <property role="TrG5h" value="signum" />
      <node concept="2fgwQN" id="74TmcPjcIxl" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="3XIRFW" id="74TmcPjcI0R" role="3XIRFX">
        <node concept="2BFjQ_" id="74TmcPjcJqD" role="3XIRFZ">
          <node concept="n5E$d" id="74TmcPjcIIr" role="2BFjQA">
            <node concept="3TlMh9" id="74TmcPjcIRz" role="n5E$j">
              <property role="2hmy$m" value="-1.0" />
            </node>
            <node concept="3TlMh9" id="74TmcPjcJ7k" role="n5E$i">
              <property role="2hmy$m" value="1.0" />
            </node>
            <node concept="3Tl9Jn" id="74TmcPjcIyA" role="n5E$c">
              <node concept="3TlMh9" id="74TmcPjcIyD" role="3TlMhJ">
                <property role="2hmy$m" value="0" />
              </node>
              <node concept="3ZUYvv" id="74TmcPjcIy0" role="3TlMhI">
                <ref role="3ZUYvu" node="74TmcPjcIxy" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="74TmcPjcIxy" role="1UOdpc">
        <property role="TrG5h" value="value" />
        <node concept="2fgwQN" id="74TmcPjcIxx" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="2uTv4B9qUKe" role="N3F5h">
      <property role="TrG5h" value="empty_1436454748986_3" />
    </node>
    <node concept="2EX0iR" id="7tTb7FvGIJ3" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="IWheelController" />
      <node concept="2EX0iL" id="7mELSK8Gh2S" role="2EX0iN">
        <property role="TrG5h" value="isWheelBlocked" />
        <node concept="3TlMgk" id="7mELSK8Gh35" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="5JLF8" id="7tTb7FvGDaV" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="WheelController" />
      <node concept="2EWHp_" id="7tTb7FvGFEI" role="2RW2fA">
        <property role="TrG5h" value="clock490Hz" />
        <ref role="2EX0h9" to="ec8n:exHFgzK8Pv" resolve="IRunnable" />
      </node>
      <node concept="2EWHp_" id="7mELSK4gjIA" role="2RW2fA">
        <property role="TrG5h" value="mainLoop" />
        <ref role="2EX0h9" to="ec8n:exHFgzK8Pv" resolve="IRunnable" />
      </node>
      <node concept="2EWHp_" id="7mELSK4fMjm" role="2RW2fA">
        <property role="TrG5h" value="wheelController" />
        <ref role="2EX0h9" node="7tTb7FvGIJ3" resolve="IWheelController" />
      </node>
      <node concept="2EWHp_" id="7mELSK4h74W" role="2RW2fA">
        <property role="TrG5h" value="wheel" />
        <ref role="2EX0h9" node="5zHWU$G$bxq" resolve="IWheel" />
      </node>
      <node concept="2EWHp$" id="7mELSK4gpw4" role="2RW2fA">
        <property role="TrG5h" value="motor" />
        <ref role="2EX0h9" node="5zHWU$GzTng" resolve="IMotor" />
      </node>
      <node concept="2EWHp$" id="7mELSK4gBLz" role="2RW2fA">
        <property role="TrG5h" value="sensorPin" />
        <ref role="2EX0h9" to="t6m2:5zHWU$Gup8b" resolve="IDigitalPin" />
      </node>
      <node concept="3Khz0B" id="7mELSK4g7Y1" role="2RW2fA" />
      <node concept="EbCE0" id="7mELSK4g0WW" role="2RW2fA">
        <property role="TrG5h" value="ticks" />
        <node concept="26Vqp4" id="7mELSK4g0WX" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMh9" id="7mELSK4g0WY" role="EbCE5">
          <property role="2hmy$m" value="0" />
        </node>
      </node>
      <node concept="EbCE0" id="7mELSK4g0X2" role="2RW2fA">
        <property role="TrG5h" value="lastSensorValue" />
        <node concept="3TlMgk" id="7mELSK4g0X3" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMhd" id="7mELSK4g0X4" role="EbCE5" />
      </node>
      <node concept="EbCE0" id="7mELSK4g0X8" role="2RW2fA">
        <property role="TrG5h" value="motorPower" />
        <node concept="CIVk6" id="1rMmLdr_36O" role="2C2TGm">
          <node concept="2fgwQN" id="1rMmLdr_36N" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="1rMmLdr_36P" role="CIVlq">
            <node concept="CIsvn" id="1rMmLdr_3H3" role="CIi4h">
              <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="1rMmLdr_6VF" role="EbCE5">
          <node concept="3TlMh9" id="1rMmLdr_6VE" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="1rMmLdr_6VG" role="CIwXZ">
            <node concept="CIsvn" id="1rMmLdr_6VH" role="CIi4h">
              <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="7mELSK4g0Xe" role="2RW2fA">
        <property role="TrG5h" value="directionChanged" />
        <node concept="3TlMgk" id="7mELSK4g0Xf" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMhd" id="7mELSK4g0Xg" role="EbCE5" />
      </node>
      <node concept="EbCE0" id="7mELSK4g0Xr" role="2RW2fA">
        <property role="TrG5h" value="wheelSegmentsError" />
        <node concept="26Vqqz" id="7mELSK4g0Xs" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMh9" id="7mELSK4g0Xt" role="EbCE5">
          <property role="2hmy$m" value="0" />
        </node>
      </node>
      <node concept="EbCE0" id="7mELSK4g129" role="2RW2fA">
        <property role="TrG5h" value="oldMotorPower" />
        <node concept="CIVk6" id="1rMmLdr_aFC" role="2C2TGm">
          <node concept="2fgwQN" id="1rMmLdr_aFB" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="1rMmLdr_aFD" role="CIVlq">
            <node concept="CIsvn" id="1rMmLdr_bqn" role="CIi4h">
              <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="1rMmLdr_ca5" role="EbCE5">
          <node concept="3TlMh9" id="1rMmLdr_ca4" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="1rMmLdr_ca6" role="CIwXZ">
            <node concept="CIsvn" id="1rMmLdr_ca7" role="CIi4h">
              <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="7mELSK8GjXe" role="2RW2fA">
        <property role="TrG5h" value="wheelBlockedTime" />
        <node concept="26VqpV" id="7mELSK8GjXc" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="3TlMh9" id="7mELSK8Gly7" role="EbCE5">
          <property role="2hmy$m" value="0" />
        </node>
      </node>
      <node concept="3Khz0B" id="6rrUiciygmT" role="2RW2fA" />
      <node concept="5JiAF" id="7tTb7FvGDaW" role="2RW2fA">
        <node concept="2EWCuV" id="7mELSK4fWnm" role="5JtDH">
          <property role="TrG5h" value="pt1ActualSpeed" />
          <ref role="2EWCuU" to="lmqm:6Y0wRXx6mUU" resolve="Pt1Filter" />
          <node concept="3R_36c" id="7mELSK4fWnn" role="3R_39I">
            <ref role="3R_36f" to="lmqm:7UgeC21lWKl" resolve="timeConstant" />
            <node concept="CIdvy" id="7mELSK4fWno" role="3R_36e">
              <node concept="3TlMh9" id="7mELSK4fWnp" role="CIrOC">
                <property role="2hmy$m" value="0.1" />
              </node>
              <node concept="CIsGf" id="7mELSK4fWnq" role="CIwXZ">
                <node concept="CIsvn" id="7mELSK4fWnr" role="CIi4h">
                  <ref role="CIi3I" to="cmgk:6TeNRL7trCJ" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWns" role="3R_39I">
            <ref role="3R_36f" to="lmqm:7UgeC21lXpg" resolve="deltaT" />
            <node concept="2BOcih" id="7mELSK4fWnt" role="3R_36e">
              <node concept="2BPB98" id="7mELSK4fWnu" role="3TlMhJ">
                <node concept="4ZOvp" id="7mELSK4fWnv" role="1_9fRO">
                  <ref role="2DPCA0" node="5MdZHRtDYnI" resolve="TIMER_FREQUENCY" />
                </node>
              </node>
              <node concept="3TlMh9" id="7mELSK4fWnw" role="3TlMhI">
                <property role="2hmy$m" value="1.0" />
              </node>
            </node>
          </node>
          <node concept="2L8oV4" id="1rMmLdr_dM6" role="3R_39I">
            <node concept="3XRFMX" id="1rMmLdr_dMG" role="1QYmkp">
              <ref role="3XRFRL" to="lmqm:1rMmLdrys60" resolve="UNIT" />
              <node concept="CIsGf" id="1rMmLdr_dMH" role="3XRFLl">
                <node concept="CIsvn" id="1rMmLdr_dMO" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="JAGxh" id="7mELSK4fWnG" role="5JtDH" />
        <node concept="2EWCuV" id="7mELSK4fWnW" role="5JtDH">
          <property role="TrG5h" value="pidForward" />
          <ref role="2EWCuU" to="lmqm:5$_GT_vvVf2" resolve="PidController" />
          <node concept="3R_36c" id="7mELSK4fWnX" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvX8$" resolve="KP" />
            <node concept="3TlMh9" id="7mELSK4fWnY" role="3R_36e">
              <property role="2hmy$m" value="0.5" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWnZ" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvXhC" resolve="KI" />
            <node concept="3TlMh9" id="7mELSK4fWo0" role="3R_36e">
              <property role="2hmy$m" value="0.2" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWo1" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvXqI" resolve="KD" />
            <node concept="3TlMh9" id="7mELSK4fWo2" role="3R_36e">
              <property role="2hmy$m" value="0.0" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWo3" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvVuD" resolve="timeInterval" />
            <node concept="2BOcih" id="7mELSK4fWo4" role="3R_36e">
              <node concept="4ZOvp" id="7mELSK4fWo5" role="3TlMhJ">
                <ref role="2DPCA0" node="5MdZHRtDYnI" resolve="TIMER_FREQUENCY" />
              </node>
              <node concept="3TlMh9" id="7mELSK4fWo6" role="3TlMhI">
                <property role="2hmy$m" value="1.0" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWo7" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vw6yD" resolve="integratorLimit" />
            <node concept="3TlMh9" id="7mELSK4fWo8" role="3R_36e">
              <property role="2hmy$m" value="0.5" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWo9" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vwavg" resolve="controlValueLimit" />
            <node concept="3TlMh9" id="7mELSK4fWoa" role="3R_36e">
              <property role="2hmy$m" value="1.0" />
            </node>
          </node>
          <node concept="2L8oV4" id="1rMmLdr$Y1Y" role="3R_39I">
            <node concept="3XRFMX" id="1rMmLdr$Y1Z" role="1QYmkp">
              <ref role="3XRFRL" to="lmqm:1rMmLdr$zJs" resolve="InputUnit" />
              <node concept="CIsGf" id="1rMmLdr$Y20" role="3XRFLl">
                <node concept="CIsvn" id="1rMmLdr$Y21" role="CIi4h">
                  <ref role="CIi3I" node="1rMmLdr$VU1" resolve="segments" />
                </node>
              </node>
            </node>
            <node concept="3XRFMX" id="1rMmLdr$Y22" role="1QYmkp">
              <ref role="3XRFRL" to="lmqm:1rMmLdr$zJz" resolve="OutputUnit" />
              <node concept="CIsGf" id="1rMmLdr$Y23" role="3XRFLl">
                <node concept="CIsvn" id="1rMmLdr$Y24" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWCuV" id="7mELSK4fWoq" role="5JtDH">
          <property role="TrG5h" value="pidBackward" />
          <ref role="2EWCuU" to="lmqm:5$_GT_vvVf2" resolve="PidController" />
          <node concept="3R_36c" id="7mELSK4fWor" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvX8$" resolve="KP" />
            <node concept="3TlMh9" id="7mELSK4fWos" role="3R_36e">
              <property role="2hmy$m" value="0.5" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWot" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvXhC" resolve="KI" />
            <node concept="3TlMh9" id="7mELSK4fWou" role="3R_36e">
              <property role="2hmy$m" value="0.2" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWov" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvXqI" resolve="KD" />
            <node concept="3TlMh9" id="7mELSK4fWow" role="3R_36e">
              <property role="2hmy$m" value="0.0" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWox" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vvVuD" resolve="timeInterval" />
            <node concept="2BOcih" id="7mELSK4fWoy" role="3R_36e">
              <node concept="4ZOvp" id="7mELSK4fWoz" role="3TlMhJ">
                <ref role="2DPCA0" node="5MdZHRtDYnI" resolve="TIMER_FREQUENCY" />
              </node>
              <node concept="3TlMh9" id="7mELSK4fWo$" role="3TlMhI">
                <property role="2hmy$m" value="1.0" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWo_" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vw6yD" resolve="integratorLimit" />
            <node concept="3TlMh9" id="7mELSK4fWoA" role="3R_36e">
              <property role="2hmy$m" value="0.5" />
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWoB" role="3R_39I">
            <ref role="3R_36f" to="lmqm:5$_GT_vwavg" resolve="controlValueLimit" />
            <node concept="3TlMh9" id="7mELSK4fWoC" role="3R_36e">
              <property role="2hmy$m" value="1.0" />
            </node>
          </node>
          <node concept="2L8oV4" id="1rMmLdr$NWP" role="3R_39I">
            <node concept="3XRFMX" id="1rMmLdr$VTz" role="1QYmkp">
              <ref role="3XRFRL" to="lmqm:1rMmLdr$zJs" resolve="InputUnit" />
              <node concept="CIsGf" id="1rMmLdr$VT$" role="3XRFLl">
                <node concept="CIsvn" id="1rMmLdr$Y0D" role="CIi4h">
                  <ref role="CIi3I" node="1rMmLdr$VU1" resolve="segments" />
                </node>
              </node>
            </node>
            <node concept="3XRFMX" id="1rMmLdr$VTF" role="1QYmkp">
              <ref role="3XRFRL" to="lmqm:1rMmLdr$zJz" resolve="OutputUnit" />
              <node concept="CIsGf" id="1rMmLdr$VTG" role="3XRFLl">
                <node concept="CIsvn" id="1rMmLdr$Y0H" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="JAGxh" id="7mELSK4fWoD" role="5JtDH" />
        <node concept="2EWCuV" id="7mELSK4fWoE" role="5JtDH">
          <property role="TrG5h" value="pt1Error" />
          <ref role="2EWCuU" to="lmqm:6Y0wRXx6mUU" resolve="Pt1Filter" />
          <node concept="3R_36c" id="7mELSK4fWoF" role="3R_39I">
            <ref role="3R_36f" to="lmqm:7UgeC21lWKl" resolve="timeConstant" />
            <node concept="CIdvy" id="7mELSK4fWoG" role="3R_36e">
              <node concept="3TlMh9" id="7mELSK4fWoH" role="CIrOC">
                <property role="2hmy$m" value="0.02" />
              </node>
              <node concept="CIsGf" id="7mELSK4fWoI" role="CIwXZ">
                <node concept="CIsvn" id="7mELSK4fWoJ" role="CIi4h">
                  <ref role="CIi3I" to="cmgk:6TeNRL7trCJ" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="7mELSK4fWoK" role="3R_39I">
            <ref role="3R_36f" to="lmqm:7UgeC21lXpg" resolve="deltaT" />
            <node concept="2BOcih" id="7mELSK4fWoL" role="3R_36e">
              <node concept="4ZOvp" id="7mELSK4fWoM" role="3TlMhJ">
                <ref role="2DPCA0" node="5MdZHRtDYnI" resolve="TIMER_FREQUENCY" />
              </node>
              <node concept="3TlMh9" id="7mELSK4fWoN" role="3TlMhI">
                <property role="2hmy$m" value="1.0" />
              </node>
            </node>
          </node>
          <node concept="2L8oV4" id="1rMmLdr_0BZ" role="3R_39I">
            <node concept="3XRFMX" id="1rMmLdr_0Cy" role="1QYmkp">
              <ref role="3XRFRL" to="lmqm:1rMmLdrys60" resolve="UNIT" />
              <node concept="CIsGf" id="1rMmLdr_0Cz" role="3XRFLl">
                <node concept="CIsvn" id="1rMmLdr_0CE" role="CIi4h">
                  <ref role="CIi3I" node="1rMmLdr$VU1" resolve="segments" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="JAGxh" id="7mELSK4h6kg" role="5JtDH" />
        <node concept="2EWCuV" id="5zHWU$G_Q_t" role="5JtDH">
          <property role="TrG5h" value="virtualWheel" />
          <ref role="2EWCuU" node="7tTb7FuPgGx" resolve="VirtualWheel" />
          <node concept="gqqVs" id="5zHWU$GDLP0" role="lGtFl">
            <property role="gqqTZ" value="602.5" />
            <property role="gqqTW" value="165.4499969482422" />
            <property role="gqqTX" value="104.0" />
            <property role="gqqTy" value="30.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5zHWU$GDLP1" role="1pap1a">
              <property role="1pa3iD" value="wheel" />
              <property role="2gRgW$" value="536870911" />
            </node>
            <node concept="1pa3jb" id="5zHWU$GDLP2" role="1pap1a">
              <property role="1pa3iD" value="motor" />
              <property role="2gRgW$" value="1610612734" />
            </node>
          </node>
          <node concept="3R_36c" id="7tTb7FuQg6D" role="3R_39I">
            <ref role="3R_36f" node="7tTb7FuPj41" resolve="deltaT" />
            <node concept="2BOcih" id="7tTb7FuQgpM" role="3R_36e">
              <node concept="4ZOvp" id="7tTb7FuQgqY" role="3TlMhJ">
                <ref role="2DPCA0" node="5MdZHRtDYnI" resolve="TIMER_FREQUENCY" />
              </node>
              <node concept="3TlMh9" id="7tTb7FuQg8F" role="3TlMhI">
                <property role="2hmy$m" value="1.0" />
              </node>
            </node>
          </node>
          <node concept="3R_36c" id="7tTb7FuQg6E" role="3R_39I">
            <ref role="3R_36f" node="7tTb7FuP_D7" resolve="diskSegments" />
            <node concept="4ZOvp" id="7tTb7FuQgvZ" role="3R_36e">
              <ref role="2DPCA0" node="5MdZHRtEjqZ" resolve="DISK_SEGMENTS" />
            </node>
          </node>
          <node concept="3R_36c" id="7tTb7FuQg6F" role="3R_39I">
            <ref role="3R_36f" node="7tTb7FuPji9" resolve="tickError" />
            <node concept="YInwV" id="7tTb7FuQgww" role="3R_36e">
              <node concept="EbZIE" id="7mELSK4h6oY" role="1_9fRO">
                <ref role="EbZID" node="7mELSK4g0Xr" resolve="wheelSegmentsError" />
              </node>
            </node>
          </node>
        </node>
        <node concept="5GgzA" id="7mELSK4h8ha" role="5JtDH">
          <ref role="5GgyZ" node="7mELSK4h74W" resolve="wheel" />
          <ref role="5GdT5" node="5zHWU$G_Q_t" resolve="virtualWheel" />
          <ref role="5GdT6" node="7tTb7FuPj3h" resolve="wheel" />
        </node>
      </node>
      <node concept="3Khz0B" id="7mELSK4fS$N" role="2RW2fA" />
      <node concept="3Khz0B" id="7mELSK4g0Xx" role="2RW2fA" />
      <node concept="2EWDwb" id="7mELSK4g0Xz" role="2RW2fA">
        <property role="TrG5h" value="clock490Hz_run" />
        <node concept="3XIRFW" id="7mELSK4g0X$" role="2EWMhI">
          <node concept="1_9egQ" id="7mELSK4g0XL" role="3XIRFZ">
            <node concept="3TM6Ez" id="7mELSK4g0XM" role="1_9egR">
              <node concept="EbZIE" id="7mELSK4g0XN" role="1_9fRO">
                <ref role="EbZID" node="7mELSK4g0WW" resolve="ticks" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g0XR" role="3XIRFZ" />
          <node concept="3XIRlf" id="7mELSK4g0XS" role="3XIRFZ">
            <property role="TrG5h" value="leftSensorValue" />
            <node concept="3TlMgk" id="7mELSK4g0XT" role="2C2TGm">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="30IBQI" id="7mELSK4gCd9" role="3XIe9u">
              <ref role="2H6Oet" to="t6m2:5zHWU$GuxJ$" resolve="read" />
              <node concept="2H6loZ" id="7mELSK4gC8e" role="1_9fRO">
                <ref role="2H6loY" node="7mELSK4gBLz" resolve="sensorPin" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g0Y1" role="3XIRFZ" />
          <node concept="c0U19" id="7mELSK4g0Y2" role="3XIRFZ">
            <node concept="3XIRFW" id="7mELSK4g0Y3" role="c0U17">
              <node concept="c0U19" id="7mELSK4g0Y4" role="3XIRFZ">
                <node concept="3XIRFW" id="7mELSK4g0Y5" role="c0U17">
                  <node concept="c0U19" id="7mELSK4g0Y6" role="3XIRFZ">
                    <node concept="3XIRFW" id="7mELSK4g0Y7" role="c0U17">
                      <node concept="1_9egQ" id="7mELSK4g0Y8" role="3XIRFZ">
                        <node concept="3TM6Ez" id="7mELSK4g0Y9" role="1_9egR">
                          <node concept="EbZIE" id="7mELSK4g0Ya" role="1_9fRO">
                            <ref role="EbZID" node="7mELSK4g0Xr" resolve="wheelSegmentsError" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tl9Jr" id="7mELSK4g0Yb" role="c0U16">
                      <node concept="3TlMh9" id="7mELSK4g0Yc" role="3TlMhJ">
                        <property role="2hmy$m" value="-127" />
                      </node>
                      <node concept="EbZIE" id="7mELSK4g0Yd" role="3TlMhI">
                        <ref role="EbZID" node="7mELSK4g0Xr" resolve="wheelSegmentsError" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tl9Jn" id="7mELSK4g0Ye" role="c0U16">
                  <node concept="CIdvy" id="1rMmLdr_8fv" role="3TlMhJ">
                    <node concept="3TlMh9" id="1rMmLdr_8fu" role="CIrOC">
                      <property role="2hmy$m" value="0.0" />
                    </node>
                    <node concept="CIsGf" id="1rMmLdr_8fw" role="CIwXZ">
                      <node concept="CIsvn" id="1rMmLdr_8fx" role="CIi4h">
                        <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                      </node>
                    </node>
                  </node>
                  <node concept="EbZIE" id="7mELSK4g0Yg" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
                  </node>
                </node>
                <node concept="1ly_i6" id="7mELSK4g0Yh" role="ggAap">
                  <node concept="3XIRFW" id="7mELSK4g0Yi" role="1ly_ph">
                    <node concept="c0U19" id="7mELSK4g0Yj" role="3XIRFZ">
                      <node concept="3XIRFW" id="7mELSK4g0Yk" role="c0U17">
                        <node concept="1_9egQ" id="7mELSK4g0Yl" role="3XIRFZ">
                          <node concept="1FldXs" id="7mELSK4g0Ym" role="1_9egR">
                            <node concept="EbZIE" id="7mELSK4g0Yn" role="1_9fRO">
                              <ref role="EbZID" node="7mELSK4g0Xr" resolve="wheelSegmentsError" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tl9Jn" id="7mELSK4g0Yo" role="c0U16">
                        <node concept="3TlMh9" id="7mELSK4g0Yp" role="3TlMhJ">
                          <property role="2hmy$m" value="127" />
                        </node>
                        <node concept="EbZIE" id="7mELSK4g0Yq" role="3TlMhI">
                          <ref role="EbZID" node="7mELSK4g0Xr" resolve="wheelSegmentsError" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3XISUE" id="7mELSK4g0Yr" role="3XIRFZ" />
              <node concept="c0U19" id="7mELSK4g0Ys" role="3XIRFZ">
                <node concept="3XIRFW" id="7mELSK4g0Yt" role="c0U17">
                  <node concept="1_9egQ" id="7mELSK4g0Yu" role="3XIRFZ">
                    <node concept="3LAlOK" id="7mELSK4g0Yv" role="1_9egR">
                      <ref role="2H6Oet" to="lmqm:6Y0wRXx6n1D" resolve="setInput" />
                      <node concept="1DnYEe" id="7mELSK4g0Yw" role="1_9fRO">
                        <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                        <ref role="1DnYF2" node="7mELSK4fWnm" resolve="pt1ActualSpeed" />
                      </node>
                      <node concept="CIdvy" id="1rMmLdr_j7A" role="2H6KYo">
                        <node concept="3TlMh9" id="1rMmLdr_j7_" role="CIrOC">
                          <property role="2hmy$m" value="0.0" />
                        </node>
                        <node concept="CIsGf" id="1rMmLdr_j7B" role="CIwXZ">
                          <node concept="CIsvn" id="1rMmLdr_oCr" role="CIi4h">
                            <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1_9egQ" id="7mELSK4g0Yy" role="3XIRFZ">
                    <node concept="3pqW6w" id="7mELSK4g0Yz" role="1_9egR">
                      <node concept="3TlMhd" id="7mELSK4g0Y$" role="3TlMhJ" />
                      <node concept="EbZIE" id="7mELSK4g0Y_" role="3TlMhI">
                        <ref role="EbZID" node="7mELSK4g0Xe" resolve="directionChanged" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="EbZIE" id="7mELSK4g0YA" role="c0U16">
                  <ref role="EbZID" node="7mELSK4g0Xe" resolve="directionChanged" />
                </node>
                <node concept="1ly_i6" id="7mELSK4g0YB" role="ggAap">
                  <node concept="3XIRFW" id="7mELSK4g0YC" role="1ly_ph">
                    <node concept="3XIRlf" id="7mELSK4g0YD" role="3XIRFZ">
                      <property role="TrG5h" value="leftSpeed" />
                      <node concept="CIVk6" id="7mELSK4g0YE" role="2C2TGm">
                        <node concept="2fgwQN" id="7mELSK4g0YF" role="UxbcT">
                          <property role="2caQfQ" value="false" />
                          <property role="2c7vTL" value="false" />
                        </node>
                        <node concept="CIsGf" id="7mELSK4g0YG" role="CIVlq">
                          <node concept="CIsvn" id="7mELSK4g0YH" role="CIi4h">
                            <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                          </node>
                        </node>
                      </node>
                      <node concept="1PfFCI" id="7mELSK4g0YI" role="3XIe9u">
                        <ref role="1Pfwd7" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                        <ref role="2yhJs8" to="g2ww:5zHWU$G$nuC" resolve="rps -&gt; rpm (any)" />
                        <node concept="CIdvy" id="7mELSK4g0YJ" role="1Pfwd1">
                          <node concept="2BPB98" id="7mELSK4g0YK" role="CIrOC">
                            <node concept="2BOcih" id="7mELSK4g0YL" role="1_9fRO">
                              <node concept="2BPB98" id="7mELSK4g0YM" role="3TlMhJ">
                                <node concept="2BOcij" id="7mELSK4g0YN" role="1_9fRO">
                                  <node concept="1S8S4T" id="7mELSK4g0YO" role="3TlMhJ">
                                    <node concept="4ZOvp" id="7mELSK4g0YP" role="1S8S4V">
                                      <ref role="2DPCA0" node="5MdZHRtEjqZ" resolve="DISK_SEGMENTS" />
                                    </node>
                                    <node concept="2fgwQN" id="7mELSK4g0YQ" role="1S8S4N">
                                      <property role="2caQfQ" value="false" />
                                      <property role="2c7vTL" value="false" />
                                    </node>
                                  </node>
                                  <node concept="1S8S4T" id="7mELSK4g0YR" role="3TlMhI">
                                    <node concept="EbZIE" id="7mELSK4g0YS" role="1S8S4V">
                                      <ref role="EbZID" node="7mELSK4g0WW" resolve="ticks" />
                                    </node>
                                    <node concept="2fgwQN" id="7mELSK4g0YT" role="1S8S4N">
                                      <property role="2caQfQ" value="false" />
                                      <property role="2c7vTL" value="false" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1S8S4T" id="7mELSK4g0YU" role="3TlMhI">
                                <node concept="4ZOvp" id="7mELSK4g0YV" role="1S8S4V">
                                  <ref role="2DPCA0" node="5MdZHRtDYnI" resolve="TIMER_FREQUENCY" />
                                </node>
                                <node concept="2fgwQN" id="7mELSK4g0YW" role="1S8S4N">
                                  <property role="2caQfQ" value="false" />
                                  <property role="2c7vTL" value="false" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="CIsGf" id="7mELSK4g0YX" role="CIwXZ">
                            <node concept="CIsvn" id="7mELSK4g0YY" role="CIi4h">
                              <ref role="CIi3I" to="g2ww:5zHWU$G$irD" resolve="rps" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="c0U19" id="7mELSK4g0YZ" role="3XIRFZ">
                      <node concept="3XIRFW" id="7mELSK4g0Z0" role="c0U17">
                        <node concept="1_9egQ" id="7mELSK4g0Z1" role="3XIRFZ">
                          <node concept="3omEAZ" id="7mELSK4g0Z2" role="1_9egR">
                            <node concept="3TlMh9" id="7mELSK4g0Z3" role="3TlMhJ">
                              <property role="2hmy$m" value="-1.0" />
                            </node>
                            <node concept="3ZVu4v" id="7mELSK4g0Z4" role="3TlMhI">
                              <ref role="3ZVs_2" node="7mELSK4g0YD" resolve="leftSpeed" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tl9Jn" id="7mELSK4g0Z5" role="c0U16">
                        <node concept="CIdvy" id="1rMmLdr_7zG" role="3TlMhJ">
                          <node concept="3TlMh9" id="1rMmLdr_7zF" role="CIrOC">
                            <property role="2hmy$m" value="0.0" />
                          </node>
                          <node concept="CIsGf" id="1rMmLdr_7zH" role="CIwXZ">
                            <node concept="CIsvn" id="1rMmLdr_7zI" role="CIi4h">
                              <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                            </node>
                          </node>
                        </node>
                        <node concept="EbZIE" id="7mELSK4g0Z7" role="3TlMhI">
                          <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
                        </node>
                      </node>
                    </node>
                    <node concept="1_9egQ" id="7mELSK4g0Z8" role="3XIRFZ">
                      <node concept="3LAlOK" id="7mELSK4g0Z9" role="1_9egR">
                        <ref role="2H6Oet" to="lmqm:6Y0wRXx6n1D" resolve="setInput" />
                        <node concept="1DnYEe" id="7mELSK4g0Za" role="1_9fRO">
                          <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                          <ref role="1DnYF2" node="7mELSK4fWnm" resolve="pt1ActualSpeed" />
                        </node>
                        <node concept="3ZVu4v" id="7mELSK4g0Zb" role="2H6KYo">
                          <ref role="3ZVs_2" node="7mELSK4g0YD" resolve="leftSpeed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1_9egQ" id="7mELSK4g0Zc" role="3XIRFZ">
                <node concept="3pqW6w" id="7mELSK4g0Zd" role="1_9egR">
                  <node concept="3TlMh9" id="7mELSK4g0Ze" role="3TlMhJ">
                    <property role="2hmy$m" value="0" />
                  </node>
                  <node concept="EbZIE" id="7mELSK4g0Zf" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g0WW" resolve="ticks" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="25Bbzn" id="7mELSK4g0Zg" role="c0U16">
              <node concept="3ZVu4v" id="7mELSK4g0Zh" role="3TlMhJ">
                <ref role="3ZVs_2" node="7mELSK4g0XS" resolve="leftSensorValue" />
              </node>
              <node concept="EbZIE" id="7mELSK4g0Zi" role="3TlMhI">
                <ref role="EbZID" node="7mELSK4g0X2" resolve="lastSensorValue" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g10$" role="3XIRFZ" />
          <node concept="c0U19" id="7mELSK4g10_" role="3XIRFZ">
            <node concept="3XIRFW" id="7mELSK4g10A" role="c0U17">
              <node concept="1_9egQ" id="7mELSK4g10B" role="3XIRFZ">
                <node concept="3LAlOK" id="7mELSK4g10C" role="1_9egR">
                  <ref role="2H6Oet" to="lmqm:6Y0wRXx6n1D" resolve="setInput" />
                  <node concept="1DnYEe" id="7mELSK4g10D" role="1_9fRO">
                    <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                    <ref role="1DnYF2" node="7mELSK4fWnm" resolve="pt1ActualSpeed" />
                  </node>
                  <node concept="CIdvy" id="1rMmLdr_oMm" role="2H6KYo">
                    <node concept="3TlMh9" id="1rMmLdr_oMl" role="CIrOC">
                      <property role="2hmy$m" value="0.0" />
                    </node>
                    <node concept="CIsGf" id="1rMmLdr_oMn" role="CIwXZ">
                      <node concept="CIsvn" id="1rMmLdr_oMo" role="CIi4h">
                        <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1_9egQ" id="7mELSK4g10F" role="3XIRFZ">
                <node concept="3pqW6w" id="7mELSK4g10G" role="1_9egR">
                  <node concept="3TlMh9" id="7mELSK4g10H" role="3TlMhJ">
                    <property role="2hmy$m" value="0" />
                  </node>
                  <node concept="EbZIE" id="7mELSK4g10I" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g0WW" resolve="ticks" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TlM44" id="7mELSK4g10J" role="c0U16">
              <node concept="3TlMh9" id="7mELSK4g10K" role="3TlMhJ">
                <property role="2hmy$m" value="255" />
              </node>
              <node concept="EbZIE" id="7mELSK4g10L" role="3TlMhI">
                <ref role="EbZID" node="7mELSK4g0WW" resolve="ticks" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g10Z" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK4g110" role="3XIRFZ">
            <node concept="3pqW6w" id="7mELSK4g111" role="1_9egR">
              <node concept="3ZVu4v" id="7mELSK4g112" role="3TlMhJ">
                <ref role="3ZVs_2" node="7mELSK4g0XS" resolve="leftSensorValue" />
              </node>
              <node concept="EbZIE" id="7mELSK4g113" role="3TlMhI">
                <ref role="EbZID" node="7mELSK4g0X2" resolve="lastSensorValue" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g118" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK4g119" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g11a" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:6Y0wRXx6n0n" resolve="intervalElapsed" />
              <node concept="1DnYEe" id="7mELSK4g11b" role="1_9fRO">
                <ref role="1DnYF2" node="7mELSK4fWoE" resolve="pt1Error" />
                <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="7mELSK4g11i" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g11j" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_vwmQ2" resolve="intervalElapsed" />
              <node concept="1DnYEe" id="7mELSK4g11k" role="1_9fRO">
                <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="7mELSK4g11o" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g11p" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_vwmQ2" resolve="intervalElapsed" />
              <node concept="1DnYEe" id="7mELSK4g11q" role="1_9fRO">
                <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g11r" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK4g11s" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g11t" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:6Y0wRXx6n0n" resolve="intervalElapsed" />
              <node concept="1DnYEe" id="7mELSK4g11u" role="1_9fRO">
                <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                <ref role="1DnYF2" node="7mELSK4fWnm" resolve="pt1ActualSpeed" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4hapK" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK4haDq" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4haQS" role="1_9egR">
              <ref role="2H6Oet" to="ec8n:exHFgzK8US" resolve="run" />
              <node concept="1DnYEe" id="7mELSK4haDp" role="1_9fRO">
                <ref role="1DnYF2" node="5zHWU$G_Q_t" resolve="virtualWheel" />
                <ref role="1DcY7d" node="7tTb7FuPj3z" resolve="clock" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK8Gk$9" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK8GkN3" role="3XIRFZ">
            <node concept="2$_UoH" id="7mELSK8GkN1" role="1_9egR">
              <ref role="2$_UoI" node="7mELSK8FFN9" resolve="checkWheelBlocked" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7mELSK4g126" role="2EWDeT">
          <ref role="1ZwxE2" to="ec8n:exHFgzK8US" resolve="run" />
          <ref role="1ZwSu5" node="7tTb7FvGFEI" resolve="clock490Hz" />
        </node>
        <node concept="19Rifw" id="7mELSK4gcvs" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="3Khz0B" id="7mELSK4g128" role="2RW2fA" />
      <node concept="2EWDwb" id="7mELSK4g12g" role="2RW2fA">
        <property role="TrG5h" value="mainLoop_run" />
        <node concept="3XIRFW" id="7mELSK4g12h" role="2EWMhI">
          <node concept="1_9egQ" id="7mELSK4g12C" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g12D" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:6Y0wRXx6n1D" resolve="setInput" />
              <node concept="1DnYEe" id="7mELSK4g12E" role="1_9fRO">
                <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                <ref role="1DnYF2" node="7mELSK4fWoE" resolve="pt1Error" />
              </node>
              <node concept="2BOcih" id="7mELSK4g12F" role="2H6KYo">
                <node concept="1S8S4T" id="7mELSK4g12G" role="3TlMhJ">
                  <node concept="4ZOvp" id="7mELSK4g12H" role="1S8S4V">
                    <ref role="2DPCA0" node="5MdZHRtEjqZ" resolve="DISK_SEGMENTS" />
                  </node>
                  <node concept="2fgwQN" id="7mELSK4g12I" role="1S8S4N">
                    <property role="2caQfQ" value="false" />
                    <property role="2c7vTL" value="false" />
                  </node>
                </node>
                <node concept="1S8S4T" id="7mELSK4g12J" role="3TlMhI">
                  <node concept="EbZIE" id="7mELSK4g12K" role="1S8S4V">
                    <ref role="EbZID" node="7mELSK4g0Xr" resolve="wheelSegmentsError" />
                  </node>
                  <node concept="2fgwQN" id="7mELSK4g12L" role="1S8S4N">
                    <property role="2caQfQ" value="false" />
                    <property role="2c7vTL" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="7mELSK4g12M" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g12N" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_wgtIm" resolve="setError" />
              <node concept="1DnYEe" id="7mELSK4g12O" role="1_9fRO">
                <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
              </node>
              <node concept="3LAlOK" id="7mELSK4g12P" role="2H6KYo">
                <ref role="2H6Oet" to="lmqm:6Y0wRXx6n2S" resolve="getOutput" />
                <node concept="1DnYEe" id="7mELSK4g12Q" role="1_9fRO">
                  <ref role="1DnYF2" node="7mELSK4fWoE" resolve="pt1Error" />
                  <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="7mELSK4g12R" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g12S" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_wgtIm" resolve="setError" />
              <node concept="1DnYEe" id="7mELSK4g12T" role="1_9fRO">
                <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
                <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
              </node>
              <node concept="3LAlOK" id="7mELSK4g12U" role="2H6KYo">
                <ref role="2H6Oet" to="lmqm:7UgeC25AlIw" resolve="getError" />
                <node concept="1DnYEe" id="7mELSK4g12V" role="1_9fRO">
                  <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                  <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g12X" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK4g131" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g132" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_vwmOI" resolve="mainLoop" />
              <node concept="1DnYEe" id="7mELSK4g133" role="1_9fRO">
                <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="7mELSK4g137" role="3XIRFZ">
            <node concept="3LAlOK" id="7mELSK4g138" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_vwmOI" resolve="mainLoop" />
              <node concept="1DnYEe" id="7mELSK4g139" role="1_9fRO">
                <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g13a" role="3XIRFZ" />
          <node concept="c0U19" id="6rrUichX1nH" role="3XIRFZ">
            <node concept="3XIRFW" id="6rrUichX1nI" role="c0U17">
              <node concept="1_9egQ" id="6rrUichX3NW" role="3XIRFZ">
                <node concept="3LAlOK" id="6rrUichX3NX" role="1_9egR">
                  <ref role="2H6Oet" to="lmqm:7tTb7Fvs5B$" resolve="freezeIntegrator" />
                  <node concept="1DnYEe" id="6rrUichX3NY" role="1_9fRO">
                    <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                    <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                  </node>
                  <node concept="3TlMhK" id="6rrUichX3NZ" role="2H6KYo" />
                </node>
              </node>
              <node concept="1_9egQ" id="6rrUichX3O0" role="3XIRFZ">
                <node concept="3LAlOK" id="6rrUichX3O1" role="1_9egR">
                  <ref role="2H6Oet" to="lmqm:7tTb7Fvs5B$" resolve="freezeIntegrator" />
                  <node concept="1DnYEe" id="6rrUichX3O2" role="1_9fRO">
                    <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
                    <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                  </node>
                  <node concept="3TlMhK" id="6rrUichX3UP" role="2H6KYo" />
                </node>
              </node>
              <node concept="1_9egQ" id="6rrUichX3O4" role="3XIRFZ">
                <node concept="3pqW6w" id="6rrUichX3O5" role="1_9egR">
                  <node concept="EbZIE" id="6rrUichX3O6" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
                  </node>
                  <node concept="CIdvy" id="1rMmLdr_8Wz" role="3TlMhJ">
                    <node concept="3TlMh9" id="1rMmLdr_8Wy" role="CIrOC">
                      <property role="2hmy$m" value="0.0" />
                    </node>
                    <node concept="CIsGf" id="1rMmLdr_8W$" role="CIwXZ">
                      <node concept="CIsvn" id="1rMmLdr_8W_" role="CIi4h">
                        <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tl9Jn" id="6rrUichX3ql" role="c0U16">
              <node concept="3O_q_g" id="6rrUichX3qn" role="3TlMhI">
                <ref role="3O_q_h" to="3y0n:137zkozycmj" resolve="fabs" />
                <node concept="3LAlOK" id="6rrUichX3qo" role="3O_q_j">
                  <ref role="2H6Oet" node="7tTb7FvstYY" resolve="getSpeed" />
                  <node concept="1DnYEe" id="6rrUichX3qp" role="1_9fRO">
                    <ref role="1DnYF2" node="5zHWU$G_Q_t" resolve="virtualWheel" />
                    <ref role="1DcY7d" node="7tTb7FuPj3h" resolve="wheel" />
                  </node>
                </node>
              </node>
              <node concept="3TlMh9" id="6rrUichX3qq" role="3TlMhJ">
                <property role="2hmy$m" value="0.001" />
              </node>
            </node>
            <node concept="gg_gk" id="6rrUichX56V" role="gg_kh">
              <node concept="3XIRFW" id="6rrUichX56W" role="gg_gl">
                <node concept="1_9egQ" id="7mELSK4g13d" role="3XIRFZ">
                  <node concept="3LAlOK" id="7mELSK4g13e" role="1_9egR">
                    <ref role="2H6Oet" to="lmqm:7tTb7Fvs5B$" resolve="freezeIntegrator" />
                    <node concept="1DnYEe" id="7mELSK4g13f" role="1_9fRO">
                      <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                      <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                    </node>
                    <node concept="3TlMhK" id="7mELSK4g13g" role="2H6KYo" />
                  </node>
                </node>
                <node concept="1_9egQ" id="7mELSK4g13h" role="3XIRFZ">
                  <node concept="3LAlOK" id="7mELSK4g13i" role="1_9egR">
                    <ref role="2H6Oet" to="lmqm:7tTb7Fvs5B$" resolve="freezeIntegrator" />
                    <node concept="1DnYEe" id="7mELSK4g13j" role="1_9fRO">
                      <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                      <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
                    </node>
                    <node concept="3TlMhd" id="7mELSK4g13k" role="2H6KYo" />
                  </node>
                </node>
                <node concept="1_9egQ" id="7mELSK4g13l" role="3XIRFZ">
                  <node concept="3pqW6w" id="7mELSK4g13m" role="1_9egR">
                    <node concept="EbZIE" id="7mELSK4g13n" role="3TlMhI">
                      <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
                    </node>
                    <node concept="3LAlOK" id="7mELSK4g13o" role="3TlMhJ">
                      <ref role="2H6Oet" to="lmqm:5$_GT_vvW2o" resolve="getControlValue" />
                      <node concept="1DnYEe" id="7mELSK4g13p" role="1_9fRO">
                        <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                        <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tl9Jn" id="6rrUichX5G3" role="gg_gt">
                <node concept="CIdvy" id="6rrUichX5G4" role="3TlMhJ">
                  <node concept="3TlMh9" id="6rrUichX5G5" role="CIrOC">
                    <property role="2hmy$m" value="0.0" />
                  </node>
                  <node concept="CIsGf" id="6rrUichX5G6" role="CIwXZ">
                    <node concept="CIsvn" id="6rrUichX5G7" role="CIi4h">
                      <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                    </node>
                  </node>
                </node>
                <node concept="3LAlOK" id="6rrUichX5G8" role="3TlMhI">
                  <ref role="2H6Oet" node="7tTb7FvstYY" resolve="getSpeed" />
                  <node concept="1DnYEe" id="6rrUichX5G9" role="1_9fRO">
                    <ref role="1DcY7d" node="7tTb7FuPj3h" resolve="wheel" />
                    <ref role="1DnYF2" node="5zHWU$G_Q_t" resolve="virtualWheel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ly_i6" id="6rrUichX77j" role="ggAap">
              <node concept="3XIRFW" id="6rrUichX77k" role="1ly_ph">
                <node concept="1_9egQ" id="7mELSK4g13z" role="3XIRFZ">
                  <node concept="3LAlOK" id="7mELSK4g13$" role="1_9egR">
                    <ref role="2H6Oet" to="lmqm:7tTb7Fvs5B$" resolve="freezeIntegrator" />
                    <node concept="1DnYEe" id="7mELSK4g13_" role="1_9fRO">
                      <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                      <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                    </node>
                    <node concept="3TlMhd" id="7mELSK4g13A" role="2H6KYo" />
                  </node>
                </node>
                <node concept="1_9egQ" id="7mELSK4g13B" role="3XIRFZ">
                  <node concept="3LAlOK" id="7mELSK4g13C" role="1_9egR">
                    <ref role="2H6Oet" to="lmqm:7tTb7Fvs5B$" resolve="freezeIntegrator" />
                    <node concept="1DnYEe" id="7mELSK4g13D" role="1_9fRO">
                      <ref role="1DnYF2" node="7mELSK4fWoq" resolve="pidBackward" />
                      <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                    </node>
                    <node concept="3TlMhK" id="7mELSK4g13E" role="2H6KYo" />
                  </node>
                </node>
                <node concept="1_9egQ" id="7mELSK4g13F" role="3XIRFZ">
                  <node concept="3pqW6w" id="7mELSK4g13G" role="1_9egR">
                    <node concept="EbZIE" id="7mELSK4g13H" role="3TlMhI">
                      <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
                    </node>
                    <node concept="3LAlOK" id="7mELSK4g13I" role="3TlMhJ">
                      <ref role="2H6Oet" to="lmqm:5$_GT_vvW2o" resolve="getControlValue" />
                      <node concept="1DnYEe" id="7mELSK4g13J" role="1_9fRO">
                        <ref role="1DnYF2" node="7mELSK4fWnW" resolve="pidForward" />
                        <ref role="1DcY7d" to="lmqm:5$_GT_vvVpc" resolve="pid" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g14l" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK4gq3I" role="3XIRFZ">
            <node concept="30IBQI" id="7mELSK4grHs" role="1_9egR">
              <ref role="2H6Oet" node="5MdZHRvcn4b" resolve="setRelativePower" />
              <node concept="2H6loZ" id="7mELSK4gq3G" role="1_9fRO">
                <ref role="2H6loY" node="7mELSK4gpw4" resolve="motor" />
              </node>
              <node concept="EbZIE" id="7mELSK4grHO" role="2H6KYo">
                <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK4g14u" role="3XIRFZ" />
          <node concept="c0U19" id="7mELSK4g14v" role="3XIRFZ">
            <node concept="3XIRFW" id="7mELSK4g14w" role="c0U17">
              <node concept="1_9egQ" id="7mELSK4g14x" role="3XIRFZ">
                <node concept="3pqW6w" id="7mELSK4g14y" role="1_9egR">
                  <node concept="3TlMhK" id="7mELSK4g14z" role="3TlMhJ" />
                  <node concept="EbZIE" id="7mELSK4g14$" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g0Xe" resolve="directionChanged" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="25Bbzn" id="7mELSK4g14_" role="c0U16">
              <node concept="2BPB98" id="7mELSK4g14A" role="3TlMhJ">
                <node concept="3Tl9Jn" id="7mELSK4g14B" role="1_9fRO">
                  <node concept="CIdvy" id="1rMmLdr_cTe" role="3TlMhJ">
                    <node concept="3TlMh9" id="1rMmLdr_cTd" role="CIrOC">
                      <property role="2hmy$m" value="0.0" />
                    </node>
                    <node concept="CIsGf" id="1rMmLdr_cTf" role="CIwXZ">
                      <node concept="CIsvn" id="1rMmLdr_cTg" role="CIi4h">
                        <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                      </node>
                    </node>
                  </node>
                  <node concept="EbZIE" id="7mELSK4g14D" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g129" resolve="oldMotorPower" />
                  </node>
                </node>
              </node>
              <node concept="2BPB98" id="7mELSK4g14E" role="3TlMhI">
                <node concept="3Tl9Jn" id="7mELSK4g14F" role="1_9fRO">
                  <node concept="CIdvy" id="1rMmLdr_9Zn" role="3TlMhJ">
                    <node concept="3TlMh9" id="1rMmLdr_9Zm" role="CIrOC">
                      <property role="2hmy$m" value="0.0" />
                    </node>
                    <node concept="CIsGf" id="1rMmLdr_9Zo" role="CIwXZ">
                      <node concept="CIsvn" id="1rMmLdr_9Zp" role="CIi4h">
                        <ref role="CIi3I" to="g2ww:1rMmLdr$Mdv" resolve="rel" />
                      </node>
                    </node>
                  </node>
                  <node concept="EbZIE" id="7mELSK4g14H" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="7mELSK4g14X" role="3XIRFZ">
            <node concept="3pqW6w" id="7mELSK4g14Y" role="1_9egR">
              <node concept="EbZIE" id="7mELSK4g14Z" role="3TlMhJ">
                <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
              </node>
              <node concept="EbZIE" id="7mELSK4g150" role="3TlMhI">
                <ref role="EbZID" node="7mELSK4g129" resolve="oldMotorPower" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSK8FG80" role="3XIRFZ" />
          <node concept="1_9egQ" id="7mELSK8FGkl" role="3XIRFZ">
            <node concept="2$_UoH" id="7mELSK8FGkj" role="1_9egR">
              <ref role="2$_UoI" node="7mELSK8FFN9" resolve="checkWheelBlocked" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7mELSK4gkb0" role="2EWDeT">
          <ref role="1ZwSu5" node="7mELSK4gjIA" resolve="mainLoop" />
          <ref role="1ZwxE2" to="ec8n:exHFgzK8US" resolve="run" />
        </node>
        <node concept="19Rifw" id="7mELSK4gkiN" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="3Khz0B" id="7mELSK4g0xt" role="2RW2fA" />
      <node concept="2EWDwb" id="7mELSK8FFN9" role="2RW2fA">
        <property role="TrG5h" value="checkWheelBlocked" />
        <node concept="3XIRFW" id="7mELSK8FFNa" role="2EWMhI">
          <node concept="3XIRlf" id="7mELSK8FGry" role="3XIRFZ">
            <property role="TrG5h" value="actualSpeed" />
            <node concept="CIVk6" id="7mELSK8FGsh" role="2C2TGm">
              <node concept="2fgwQN" id="7mELSK8FGsg" role="UxbcT">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
              <node concept="CIsGf" id="7mELSK8FGsi" role="CIVlq">
                <node concept="CIsvn" id="7mELSK8FGtd" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                </node>
              </node>
            </node>
            <node concept="CIdvy" id="7mELSK8FGBb" role="3XIe9u">
              <node concept="CIsGf" id="7mELSK8FGBc" role="CIwXZ">
                <node concept="CIsvn" id="7mELSK8FGBd" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                </node>
              </node>
              <node concept="3O_q_g" id="7mELSK8FJ5T" role="CIrOC">
                <ref role="3O_q_h" to="3y0n:137zkozycmj" resolve="fabs" />
                <node concept="3LAlOK" id="7mELSK8FGB9" role="3O_q_j">
                  <ref role="2H6Oet" to="lmqm:6Y0wRXx6n2S" resolve="getOutput" />
                  <node concept="1DnYEe" id="7mELSK8FGBa" role="1_9fRO">
                    <ref role="1DnYF2" node="7mELSK4fWnm" resolve="pt1ActualSpeed" />
                    <ref role="1DcY7d" to="lmqm:6Y0wRXx6nrO" resolve="filter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3XIRlf" id="7mELSKaEzSw" role="3XIRFZ">
            <property role="TrG5h" value="power" />
            <node concept="2fgwQN" id="7mELSKaEzTa" role="2C2TGm">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="3O_q_g" id="7mELSKaEzTb" role="3XIe9u">
              <ref role="3O_q_h" to="3y0n:137zkozycmj" resolve="fabs" />
              <node concept="EbZIE" id="7mELSKaEzTc" role="3O_q_j">
                <ref role="EbZID" node="7mELSK4g0X8" resolve="motorPower" />
              </node>
            </node>
          </node>
          <node concept="3XIRlf" id="7mELSK8GlYO" role="3XIRFZ">
            <property role="TrG5h" value="wheelBlocked" />
            <node concept="3TlMgk" id="7mELSK8GlYM" role="2C2TGm">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="2EHzL6" id="7mELSKaEWkd" role="3XIe9u">
              <node concept="3Tl9Jr" id="7mELSKaEXwv" role="3TlMhI">
                <node concept="3TlMh9" id="7mELSKaEXwy" role="3TlMhJ">
                  <property role="2hmy$m" value="0.4" />
                </node>
                <node concept="3ZVu4v" id="7mELSKaEWUE" role="3TlMhI">
                  <ref role="3ZVs_2" node="7mELSKaEzSw" resolve="power" />
                </node>
              </node>
              <node concept="3Tl9Jn" id="7mELSKaEV7D" role="3TlMhJ">
                <node concept="2BOcij" id="7mELSKaETAd" role="3TlMhJ">
                  <node concept="CIdvy" id="7mELSKaEUxL" role="3TlMhJ">
                    <node concept="3TlMh9" id="7mELSKaEUxK" role="CIrOC">
                      <property role="2hmy$m" value="100" />
                    </node>
                    <node concept="CIsGf" id="7mELSKaEUxM" role="CIwXZ">
                      <node concept="CIsvn" id="7mELSKaEUxN" role="CIi4h">
                        <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2BPB98" id="7mELSKaES6V" role="3TlMhI">
                    <node concept="2BOcil" id="7mELSKaESIa" role="1_9fRO">
                      <node concept="3TlMh9" id="7mELSKaESId" role="3TlMhJ">
                        <property role="2hmy$m" value="0.3" />
                      </node>
                      <node concept="3ZVu4v" id="7mELSKaESql" role="3TlMhI">
                        <ref role="3ZVs_2" node="7mELSKaEzSw" resolve="power" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3ZVu4v" id="7mELSKaEVH3" role="3TlMhI">
                  <ref role="3ZVs_2" node="7mELSK8FGry" resolve="actualSpeed" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7mELSKaEyXS" role="3XIRFZ" />
          <node concept="c0U19" id="7mELSK8Gmzz" role="3XIRFZ">
            <node concept="3XIRFW" id="7mELSK8Gmz$" role="c0U17">
              <node concept="c0U19" id="7mELSK8GmRf" role="3XIRFZ">
                <node concept="3XIRFW" id="7mELSK8GmRg" role="c0U17">
                  <node concept="1_9egQ" id="7mELSK8GmPz" role="3XIRFZ">
                    <node concept="3TM6Ez" id="7mELSK8GmPN" role="1_9egR">
                      <node concept="EbZIE" id="7mELSK8GmPy" role="1_9fRO">
                        <ref role="EbZID" node="7mELSK8GjXe" resolve="wheelBlockedTime" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tl9Jn" id="7mELSK8GmRT" role="c0U16">
                  <node concept="3TlMh9" id="7mELSK8Gnz5" role="3TlMhJ">
                    <property role="2hmy$m" value="65535" />
                  </node>
                  <node concept="EbZIE" id="7mELSK8GqRf" role="3TlMhI">
                    <ref role="EbZID" node="7mELSK8GjXe" resolve="wheelBlockedTime" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3ZVu4v" id="7mELSK8GmPo" role="c0U16">
              <ref role="3ZVs_2" node="7mELSK8GlYO" resolve="wheelBlocked" />
            </node>
            <node concept="1ly_i6" id="7mELSK8GpE4" role="ggAap">
              <node concept="3XIRFW" id="7mELSK8GpE5" role="1ly_ph">
                <node concept="1_9egQ" id="7mELSK8Gq1q" role="3XIRFZ">
                  <node concept="3pqW6w" id="7mELSK8Gqqw" role="1_9egR">
                    <node concept="3TlMh9" id="7mELSK8Gqqz" role="3TlMhJ">
                      <property role="2hmy$m" value="0" />
                    </node>
                    <node concept="EbZIE" id="7mELSK8Gq4_" role="3TlMhI">
                      <ref role="EbZID" node="7mELSK8GjXe" resolve="wheelBlockedTime" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="7mELSK8FG7o" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="3Khz0B" id="7mELSK8Gr9u" role="2RW2fA" />
      <node concept="2EWDwb" id="7mELSK8GsnK" role="2RW2fA">
        <property role="TrG5h" value="wheelController_isWheelBlocked" />
        <node concept="3XIRFW" id="7mELSK8GsnL" role="2EWMhI">
          <node concept="2BFjQ_" id="7mELSK8GtlG" role="3XIRFZ">
            <node concept="3Tl9Jr" id="7mELSK8GtVt" role="2BFjQA">
              <node concept="4ZOvp" id="7mELSK8Gz4S" role="3TlMhJ">
                <ref role="2DPCA0" node="7mELSK8GwDi" resolve="TICKS_PER_SECOND" />
              </node>
              <node concept="EbZIE" id="7mELSK8GtC6" role="3TlMhI">
                <ref role="EbZID" node="7mELSK8GjXe" resolve="wheelBlockedTime" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7mELSK8Gt2b" role="2EWDeT">
          <ref role="1ZwSu5" node="7mELSK4fMjm" resolve="wheelController" />
          <ref role="1ZwxE2" node="7mELSK8Gh2S" resolve="isWheelBlocked" />
        </node>
        <node concept="3TlMgk" id="7mELSK8Gt2u" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="7tTb7FvGADN" role="N3F5h">
      <property role="TrG5h" value="empty_1438960020865_7" />
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzSVD" role="N3F5h">
      <property role="TrG5h" value="empty_1436266426623_49" />
    </node>
    <node concept="2NXPZ9" id="exHFgzLNyQ" role="N3F5h">
      <property role="TrG5h" value="empty_1436179304681_15" />
    </node>
    <node concept="2NXPZ9" id="exHFgzLKl4" role="N3F5h">
      <property role="TrG5h" value="empty_1436179107375_14" />
    </node>
    <node concept="3GEVxB" id="4sbNL4NQY6d" role="2OODSX">
      <ref role="3GEb4d" to="aelz:Yv2B6LBx6E" resolve="util_delay" />
    </node>
    <node concept="3GEVxB" id="exHFgzK8uz" role="2OODSX">
      <ref role="3GEb4d" to="g2ww:5zHWU$G$0WY" resolve="Units" />
    </node>
    <node concept="3GEVxB" id="1rMmLdr$TJf" role="2OODSX">
      <ref role="3GEb4d" node="1rMmLdr$RkR" resolve="MotorUnits" />
    </node>
    <node concept="3GEVxB" id="5zHWU$GzSCT" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="ec8n:5zHWU$GzMff" resolve="Util" />
    </node>
    <node concept="3GEVxB" id="5zHWU$G_Q$6" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" node="5zHWU$GzThY" resolve="Chassis" />
    </node>
    <node concept="3GEVxB" id="5zHWU$G_QMY" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="bs9u:74TmcPjVX9B" resolve="AvrTimers" />
    </node>
    <node concept="3GEVxB" id="2t4Dw6aEI9N" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="azo0:oDdAT4ofk7" resolve="UART" />
    </node>
    <node concept="3GEVxB" id="74TmcPjdOqN" role="2OODSX">
      <ref role="3GEb4d" to="3y0n:1WTn9U1bbwi" resolve="math" />
    </node>
    <node concept="3GEVxB" id="74TmcPjoUG6" role="2OODSX">
      <ref role="3GEb4d" to="3y0n:1WTn9U1b1j1" resolve="stdlib" />
    </node>
    <node concept="3GEVxB" id="5$_GT_vmTOz" role="2OODSX">
      <ref role="3GEb4d" to="lj5:2JGF63bDca1" resolve="MotorBoardMessages" />
    </node>
    <node concept="3GEVxB" id="fWgwtp3nzm" role="2OODSX">
      <ref role="3GEb4d" to="bs9u:555ATsvQp8E" resolve="avr_registers" />
    </node>
    <node concept="3GEVxB" id="5MdZHRto1vP" role="2OODSX">
      <ref role="3GEb4d" to="t6m2:5zHWU$GuxGd" resolve="IO" />
    </node>
    <node concept="3GEVxB" id="5MdZHRto3sg" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="bs9u:74TmcPjVXfk" resolve="AvrIO" />
    </node>
    <node concept="3GEVxB" id="5MdZHRtDUpi" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="lmqm:6Y0wRXx6mS$" resolve="PT1Filter" />
    </node>
    <node concept="3GEVxB" id="5MdZHRtDWmo" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="lmqm:5$_GT_vvVeM" resolve="PIDController" />
    </node>
  </node>
  <node concept="N3F5e" id="5zHWU$GzThY">
    <property role="TrG5h" value="Chassis" />
    <node concept="4WHVk" id="1a4kF8yJZm6" role="N3F5h">
      <property role="TrG5h" value="PI" />
      <property role="2OOxQR" value="true" />
      <node concept="3TlMh9" id="1a4kF8yJZm7" role="2DQcEM">
        <property role="2hmy$m" value="3.14159265359" />
      </node>
    </node>
    <node concept="4WHVk" id="5zHWU$G$j$w" role="N3F5h">
      <property role="TrG5h" value="WHEEL_DIAMETER" />
      <property role="2OOxQR" value="true" />
      <node concept="CIdvy" id="5zHWU$G$j$x" role="2DQcEM">
        <node concept="3TlMh9" id="5zHWU$G$j$y" role="CIrOC">
          <property role="2hmy$m" value="0.063" />
        </node>
        <node concept="CIsGf" id="5zHWU$G$j$z" role="CIwXZ">
          <node concept="CIsvn" id="5zHWU$G$j$$" role="CIi4h">
            <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4WHVk" id="5zHWU$G$rYB" role="N3F5h">
      <property role="TrG5h" value="WHEEL_CIRCUMFENCE" />
      <property role="2OOxQR" value="true" />
      <node concept="2BOcij" id="5zHWU$G$szP" role="2DQcEM">
        <node concept="4ZOvp" id="1a4kF8yJZm9" role="3TlMhJ">
          <ref role="2DPCA0" node="1a4kF8yJZm6" resolve="PI" />
        </node>
        <node concept="4ZOvp" id="5zHWU$G$sus" role="3TlMhI">
          <ref role="2DPCA0" node="5zHWU$G$j$w" resolve="WHEEL_DIAMETER" />
        </node>
      </node>
    </node>
    <node concept="4WHVk" id="5zHWU$G_3Sc" role="N3F5h">
      <property role="TrG5h" value="WHEEL_DISTANCE" />
      <property role="2OOxQR" value="true" />
      <node concept="CIdvy" id="5zHWU$G_509" role="2DQcEM">
        <node concept="3TlMh9" id="5zHWU$G_508" role="CIrOC">
          <property role="2hmy$m" value="0.132" />
        </node>
        <node concept="CIsGf" id="5zHWU$G_50a" role="CIwXZ">
          <node concept="CIsvn" id="5zHWU$G_50b" role="CIi4h">
            <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzThZ" role="N3F5h">
      <property role="TrG5h" value="empty_1436266794564_52" />
    </node>
    <node concept="2EX0iR" id="5zHWU$GzTng" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="IMotor" />
      <node concept="2EX0iL" id="5zHWU$GzTqX" role="2EX0iN">
        <property role="TrG5h" value="setSpeed" />
        <node concept="2EWNYT" id="5zHWU$GzTrU" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$gqk" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$gqj" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$gql" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$h77" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="5zHWU$GzTr8" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2EX0iL" id="5MdZHRvcn4b" role="2EX0iN">
        <property role="TrG5h" value="setRelativePower" />
        <node concept="2EWNYT" id="5MdZHRvcn5m" role="1UOdpc">
          <property role="TrG5h" value="power" />
          <node concept="2fgwQN" id="5MdZHRvcn5k" role="2C2TGm">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
        <node concept="19Rifw" id="5MdZHRvcn4D" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5zHWU$G$fOq" role="N3F5h">
      <property role="TrG5h" value="empty_1436270289376_67" />
    </node>
    <node concept="2EX0iR" id="5zHWU$G$bxq" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="IWheel" />
      <node concept="2EX0iL" id="5zHWU$G$bFu" role="2EX0iN">
        <property role="TrG5h" value="setSpeed" />
        <node concept="2EWNYT" id="5zHWU$G$bGm" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$bGC" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$bGB" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$bGD" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$bHk" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="5zHWU$G$bFD" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2EX0iL" id="7tTb7FvstYY" role="2EX0iN">
        <property role="TrG5h" value="getSpeed" />
        <node concept="CIVk6" id="7tTb7FvstZM" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FvstZL" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FvstZN" role="CIVlq">
            <node concept="CIsvn" id="7tTb7Fvsu0u" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5zHWU$G$bnn" role="N3F5h">
      <property role="TrG5h" value="empty_1436270110341_65" />
    </node>
    <node concept="2EX0iR" id="5zHWU$GzZa_" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="IChassis" />
      <node concept="2EX0iL" id="5$_GT_vxT0d" role="2EX0iN">
        <property role="TrG5h" value="setRadius" />
        <node concept="2EWNYT" id="5$_GT_vxT1E" role="1UOdpc">
          <property role="TrG5h" value="radius" />
          <node concept="CIVk6" id="5$_GT_vxT1W" role="2C2TGm">
            <node concept="2fgwQN" id="5$_GT_vxT1V" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5$_GT_vxT1X" role="CIVlq">
              <node concept="CIsvn" id="5$_GT_vxT2C" role="CIi4h">
                <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="5$_GT_vxT0S" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2EX0iL" id="5$_GT_vwEEa" role="2EX0iN">
        <property role="TrG5h" value="setRotation" />
        <node concept="19Rifw" id="5$_GT_vwEEb" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2EWNYT" id="5$_GT_vwEEc" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5$_GT_vwEEd" role="2C2TGm">
            <node concept="2fgwQN" id="5$_GT_vwEEe" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5$_GT_vwEEf" role="CIVlq">
              <node concept="CIsvn" id="5$_GT_vwELd" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2EX0iL" id="5zHWU$G$6nJ" role="2EX0iN">
        <property role="TrG5h" value="setSpeed" />
        <node concept="19Rifw" id="5zHWU$G$6nH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2EWNYT" id="5zHWU$G$962" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$96k" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$96j" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$96l" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$9v0" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2EX0iL" id="1a4kF8yJUXj" role="2EX0iN">
        <property role="TrG5h" value="spin" />
        <node concept="2EWNYT" id="1a4kF8yJUZc" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="1a4kF8yJUZM" role="2C2TGm">
            <node concept="2fgwQN" id="1a4kF8yJUZL" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="1a4kF8yJUZN" role="CIVlq">
              <node concept="CIsvn" id="1a4kF8yJV0u" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="1a4kF8yJUXW" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzTmB" role="N3F5h">
      <property role="TrG5h" value="empty_1436266921480_57" />
    </node>
    <node concept="2EWCuY" id="5zHWU$GzTu3" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="Motor" />
      <node concept="2EWHp_" id="5zHWU$GzTuP" role="2RW2fA">
        <property role="TrG5h" value="motor" />
        <ref role="2EX0h9" node="5zHWU$GzTng" resolve="IMotor" />
      </node>
      <node concept="2EWHp$" id="5zHWU$GzTik" role="2RW2fA">
        <property role="TrG5h" value="pwmForward" />
        <ref role="2EX0h9" to="t6m2:5zHWU$GxIap" resolve="IPWMPin" />
      </node>
      <node concept="2EWHp$" id="5zHWU$GzTiA" role="2RW2fA">
        <property role="TrG5h" value="pwmBackward" />
        <ref role="2EX0h9" to="t6m2:5zHWU$GxIap" resolve="IPWMPin" />
      </node>
      <node concept="3Khz0B" id="5zHWU$GzTuS" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$GzTwg" role="2RW2fA">
        <property role="TrG5h" value="motor_setSpeed" />
        <node concept="3XIRFW" id="5zHWU$GzTwh" role="2EWMhI">
          <node concept="3XIRlf" id="5zHWU$G$r6v" role="3XIRFZ">
            <property role="TrG5h" value="pwmValue" />
            <node concept="26Vqpq" id="5zHWU$G$Obd" role="2C2TGm">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="2$_UoH" id="5zHWU$G$ONo" role="3XIe9u">
              <ref role="2$_UoI" node="5zHWU$G$JrP" resolve="mapSpeedToPwmValue" />
              <node concept="3ZUYvv" id="5zHWU$G$P_g" role="3O_q_k">
                <ref role="3ZUYvu" node="5zHWU$G$h7E" resolve="speed" />
              </node>
            </node>
          </node>
          <node concept="c0U19" id="5zHWU$GzTyT" role="3XIRFZ">
            <node concept="3XIRFW" id="5zHWU$GzTyU" role="c0U17">
              <node concept="1_9egQ" id="5zHWU$GzVnt" role="3XIRFZ">
                <node concept="30IBQI" id="5zHWU$GzV$_" role="1_9egR">
                  <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                  <node concept="2H6loZ" id="5zHWU$GzVnr" role="1_9fRO">
                    <ref role="2H6loY" node="5zHWU$GzTik" resolve="pwmForward" />
                  </node>
                  <node concept="1S8S4T" id="5zHWU$G$Sok" role="2H6KYo">
                    <node concept="3ZVu4v" id="5zHWU$G$RUA" role="1S8S4V">
                      <ref role="3ZVs_2" node="5zHWU$G$r6v" resolve="pwmValue" />
                    </node>
                    <node concept="26Vqp4" id="5zHWU$G$SP_" role="1S8S4N">
                      <property role="2caQfQ" value="false" />
                      <property role="2c7vTL" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1_9egQ" id="5zHWU$GzWEd" role="3XIRFZ">
                <node concept="30IBQI" id="5zHWU$GzWXA" role="1_9egR">
                  <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                  <node concept="2H6loZ" id="5zHWU$GzWTK" role="1_9fRO">
                    <ref role="2H6loY" node="5zHWU$GzTiA" resolve="pwmBackward" />
                  </node>
                  <node concept="3TlMh9" id="5zHWU$GzX2F" role="2H6KYo">
                    <property role="2hmy$m" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tl9Jp" id="5zHWU$GzTD4" role="c0U16">
              <node concept="3ZVu4v" id="5zHWU$G$QYr" role="3TlMhI">
                <ref role="3ZVs_2" node="5zHWU$G$r6v" resolve="pwmValue" />
              </node>
              <node concept="3TlMh9" id="5zHWU$G$qTg" role="3TlMhJ">
                <property role="2hmy$m" value="0" />
              </node>
            </node>
            <node concept="1ly_i6" id="5zHWU$GzUbw" role="ggAap">
              <node concept="3XIRFW" id="5zHWU$GzUbx" role="1ly_ph">
                <node concept="1_9egQ" id="5zHWU$GzXpK" role="3XIRFZ">
                  <node concept="30IBQI" id="5zHWU$GzXC6" role="1_9egR">
                    <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                    <node concept="2H6loZ" id="5zHWU$GzXpI" role="1_9fRO">
                      <ref role="2H6loY" node="5zHWU$GzTik" resolve="pwmForward" />
                    </node>
                    <node concept="3TlMh9" id="5zHWU$GzXDV" role="2H6KYo">
                      <property role="2hmy$m" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="1_9egQ" id="5zHWU$GzXTi" role="3XIRFZ">
                  <node concept="30IBQI" id="5zHWU$GzY84" role="1_9egR">
                    <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                    <node concept="2H6loZ" id="5zHWU$GzXTg" role="1_9fRO">
                      <ref role="2H6loY" node="5zHWU$GzTiA" resolve="pwmBackward" />
                    </node>
                    <node concept="1S8S4T" id="5zHWU$GzYbD" role="2H6KYo">
                      <node concept="1FllXc" id="5zHWU$GzZmD" role="1S8S4V">
                        <node concept="2BPB98" id="5zHWU$GzYbE" role="1_9fRO">
                          <node concept="3ZVu4v" id="5zHWU$HbCuH" role="1_9fRO">
                            <ref role="3ZVs_2" node="5zHWU$G$r6v" resolve="pwmValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="26Vqp4" id="5zHWU$GzYdt" role="1S8S4N">
                        <property role="2caQfQ" value="false" />
                        <property role="2c7vTL" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5zHWU$GzTwj" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$GzTuP" resolve="motor" />
          <ref role="1ZwxE2" node="5zHWU$GzTqX" resolve="setSpeed" />
        </node>
        <node concept="19Rifw" id="5zHWU$G$h7D" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5zHWU$G$h7E" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$h7F" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$h7G" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$h7H" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$h7I" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="5zHWU$G$IYW" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$G$JrP" role="2RW2fA">
        <property role="TrG5h" value="mapSpeedToPwmValue" />
        <node concept="19RgSI" id="5zHWU$G$JRu" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$JS4" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$JS3" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$JS5" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$JSK" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3XIRFW" id="5zHWU$G$JrQ" role="2EWMhI">
          <node concept="1QiMYF" id="5zHWU$G$rrW" role="3XIRFZ">
            <node concept="OjmMv" id="5zHWU$G$rrY" role="3SJzmv">
              <node concept="19SGf9" id="5zHWU$G$rrZ" role="OjmMu">
                <node concept="19SUe$" id="5zHWU$G$rs0" role="19SJt6">
                  <property role="19SUeA" value="meassured values on carpet with rubberbands around the wheels:&#10;PWM | Speed &#10; 32&#9;&#9; 0,00 m / 5 s&#10; 64&#9;&#9; 0,00 m / 5 s&#10; 96&#9;&#9; 0,70 m / 5 s&#10;128&#9; &#9;1,35 m / 5 s&#10;160&#9; &#9;1,74 m / 5 s&#10;192&#9; &#9;1,99 m / 5 s&#10;224&#9;&#9; 2,22 m / 5 s&#10;255&#9; &#9;2,53 m / 5 s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3XIRlf" id="5zHWU$H9qaz" role="3XIRFZ">
            <property role="TrG5h" value="robotSpeed" />
            <node concept="CIVk6" id="5zHWU$H9qSr" role="2C2TGm">
              <node concept="2fgwQN" id="5zHWU$H9qSq" role="UxbcT">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
              <node concept="CIsGf" id="5zHWU$H9qSs" role="CIVlq">
                <node concept="CIsvn" id="5zHWU$H9rwa" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                </node>
              </node>
            </node>
            <node concept="2BOcij" id="5zHWU$H9qiP" role="3XIe9u">
              <node concept="4ZOvp" id="5zHWU$H9qiQ" role="3TlMhJ">
                <ref role="2DPCA0" node="5zHWU$G$rYB" resolve="WHEEL_CIRCUMFENCE" />
              </node>
              <node concept="1PfFCI" id="5zHWU$H9qiR" role="3TlMhI">
                <ref role="1Pfwd7" to="g2ww:5zHWU$G$irD" resolve="rps" />
                <ref role="2yhJs8" to="g2ww:5zHWU$G$hNS" resolve="rpm -&gt; rps (any)" />
                <node concept="3ZUYvv" id="5zHWU$H9qiS" role="1Pfwd1">
                  <ref role="3ZUYvu" node="5zHWU$G$JRu" resolve="speed" />
                </node>
              </node>
            </node>
          </node>
          <node concept="c0U19" id="5zHWU$HaVbX" role="3XIRFZ">
            <node concept="3XIRFW" id="5zHWU$HaVbY" role="c0U17">
              <node concept="2BFjQ_" id="5zHWU$HaZVw" role="3XIRFZ">
                <node concept="3TlMh9" id="5zHWU$HaZVE" role="2BFjQA">
                  <property role="2hmy$m" value="0" />
                </node>
              </node>
            </node>
            <node concept="2EHzL6" id="6GJsmvb8LHU" role="c0U16">
              <node concept="3Tl9Jr" id="6GJsmvb8Njh" role="3TlMhJ">
                <node concept="CIdvy" id="6GJsmvb8PM0" role="3TlMhJ">
                  <node concept="3TlMh9" id="6GJsmvb8PLZ" role="CIrOC">
                    <property role="2hmy$m" value="-0.01" />
                  </node>
                  <node concept="CIsGf" id="6GJsmvb8PM1" role="CIwXZ">
                    <node concept="CIsvn" id="6GJsmvb8PM2" role="CIi4h">
                      <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                    </node>
                  </node>
                </node>
                <node concept="3ZVu4v" id="6GJsmvb8Mym" role="3TlMhI">
                  <ref role="3ZVs_2" node="5zHWU$H9qaz" resolve="robotSpeed" />
                </node>
              </node>
              <node concept="3Tl9Jn" id="5zHWU$HaWIn" role="3TlMhI">
                <node concept="CIdvy" id="5zHWU$HaZaX" role="3TlMhJ">
                  <node concept="3TlMh9" id="5zHWU$HaZaW" role="CIrOC">
                    <property role="2hmy$m" value="0.01" />
                  </node>
                  <node concept="CIsGf" id="5zHWU$HaZaY" role="CIwXZ">
                    <node concept="CIsvn" id="5zHWU$HaZaZ" role="CIi4h">
                      <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                    </node>
                  </node>
                </node>
                <node concept="3ZVu4v" id="5zHWU$HaVYT" role="3TlMhI">
                  <ref role="3ZVs_2" node="5zHWU$H9qaz" resolve="robotSpeed" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3XIRlf" id="5zHWU$G$JTM" role="3XIRFZ">
            <property role="TrG5h" value="pwmValue" />
            <node concept="2fgwQN" id="5zHWU$G$JTN" role="2C2TGm">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="n5E$d" id="5zHWU$HaeCe" role="3XIe9u">
              <node concept="2BOciq" id="5zHWU$H9vqE" role="n5E$j">
                <node concept="3TlMh9" id="5zHWU$H9vqH" role="3TlMhJ">
                  <property role="2hmy$m" value="41" />
                </node>
                <node concept="2BOcij" id="5zHWU$H9tDk" role="3TlMhI">
                  <node concept="3TlMh9" id="5zHWU$H9tDn" role="3TlMhJ">
                    <property role="2hmy$m" value="390" />
                  </node>
                  <node concept="2yh1Mg" id="5zHWU$H9xo4" role="3TlMhI">
                    <node concept="3ZVu4v" id="5zHWU$H9tcY" role="2yh1Mn">
                      <ref role="3ZVs_2" node="5zHWU$H9qaz" resolve="robotSpeed" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2BOcil" id="5zHWU$HagN0" role="n5E$i">
                <node concept="2BOcij" id="5zHWU$HagN3" role="3TlMhI">
                  <node concept="3TlMh9" id="5zHWU$HagN4" role="3TlMhJ">
                    <property role="2hmy$m" value="390" />
                  </node>
                  <node concept="2yh1Mg" id="5zHWU$HagN5" role="3TlMhI">
                    <node concept="3ZVu4v" id="5zHWU$HagN6" role="2yh1Mn">
                      <ref role="3ZVs_2" node="5zHWU$H9qaz" resolve="robotSpeed" />
                    </node>
                  </node>
                </node>
                <node concept="3TlMh9" id="5zHWU$HagN2" role="3TlMhJ">
                  <property role="2hmy$m" value="41" />
                </node>
              </node>
              <node concept="3Tl9Jp" id="5zHWU$HaTDW" role="n5E$c">
                <node concept="3ZVu4v" id="5zHWU$HaTE2" role="3TlMhI">
                  <ref role="3ZVs_2" node="5zHWU$H9qaz" resolve="robotSpeed" />
                </node>
                <node concept="CIdvy" id="5zHWU$HaTDY" role="3TlMhJ">
                  <node concept="3TlMh9" id="5zHWU$HaTDZ" role="CIrOC">
                    <property role="2hmy$m" value="0" />
                  </node>
                  <node concept="CIsGf" id="5zHWU$HaTE0" role="CIwXZ">
                    <node concept="CIsvn" id="5zHWU$HaTE1" role="CIi4h">
                      <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="c0U19" id="5zHWU$G$K5c" role="3XIRFZ">
            <node concept="3XIRFW" id="5zHWU$G$K5d" role="c0U17">
              <node concept="2BFjQ_" id="5zHWU$G$KZk" role="3XIRFZ">
                <node concept="3TlMh9" id="5zHWU$G$KZt" role="2BFjQA">
                  <property role="2hmy$m" value="255" />
                </node>
              </node>
            </node>
            <node concept="3Tl9Jp" id="5zHWU$G$KLv" role="c0U16">
              <node concept="3ZVu4v" id="5zHWU$G$KLy" role="3TlMhI">
                <ref role="3ZVs_2" node="5zHWU$G$JTM" resolve="pwmValue" />
              </node>
              <node concept="3TlMh9" id="5zHWU$G$KLx" role="3TlMhJ">
                <property role="2hmy$m" value="255" />
              </node>
            </node>
            <node concept="gg_gk" id="5zHWU$G$LF3" role="gg_kh">
              <node concept="3XIRFW" id="5zHWU$G$LF4" role="gg_gl">
                <node concept="2BFjQ_" id="5zHWU$G$Msa" role="3XIRFZ">
                  <node concept="3TlMh9" id="5zHWU$G$Msj" role="2BFjQA">
                    <property role="2hmy$m" value="-255" />
                  </node>
                </node>
              </node>
              <node concept="3Tl9Jl" id="5zHWU$G$MWo" role="gg_gt">
                <node concept="3ZVu4v" id="5zHWU$G$MWr" role="3TlMhI">
                  <ref role="3ZVs_2" node="5zHWU$G$JTM" resolve="pwmValue" />
                </node>
                <node concept="3TlMh9" id="5zHWU$G$MWq" role="3TlMhJ">
                  <property role="2hmy$m" value="-255" />
                </node>
              </node>
            </node>
            <node concept="1ly_i6" id="5zHWU$G$NrV" role="ggAap">
              <node concept="3XIRFW" id="5zHWU$G$NrW" role="1ly_ph">
                <node concept="2BFjQ_" id="5zHWU$G$NF7" role="3XIRFZ">
                  <node concept="1S8S4T" id="5zHWU$G$NFg" role="2BFjQA">
                    <node concept="2BPB98" id="5zHWU$G$NFh" role="1S8S4V">
                      <node concept="3ZVu4v" id="5zHWU$G$Ob6" role="1_9fRO">
                        <ref role="3ZVs_2" node="5zHWU$G$JTM" resolve="pwmValue" />
                      </node>
                    </node>
                    <node concept="26Vqpq" id="5zHWU$G$NVe" role="1S8S4N">
                      <property role="2caQfQ" value="false" />
                      <property role="2c7vTL" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="26Vqpq" id="5zHWU$G$JQ9" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2EWDwb" id="5MdZHRvcqEx" role="2RW2fA">
        <property role="TrG5h" value="motor_setRelativePower" />
        <node concept="3XIRFW" id="5MdZHRvcqEy" role="2EWMhI">
          <node concept="3XIRlf" id="5MdZHRvcsUr" role="3XIRFZ">
            <property role="TrG5h" value="pwmValue" />
            <node concept="26Vqpq" id="5MdZHRvcsUs" role="2C2TGm">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="1S8S4T" id="5MdZHRvcCqi" role="3XIe9u">
              <node concept="2BPB98" id="5MdZHRvcCqk" role="1S8S4V">
                <node concept="2BOcij" id="5MdZHRvcwWV" role="1_9fRO">
                  <node concept="3TlMh9" id="5MdZHRvcwWY" role="3TlMhJ">
                    <property role="2hmy$m" value="255.0" />
                  </node>
                  <node concept="3ZUYvv" id="5MdZHRvcv8s" role="3TlMhI">
                    <ref role="3ZUYvu" node="5MdZHRvcqEA" resolve="power" />
                  </node>
                </node>
              </node>
              <node concept="26Vqpq" id="5MdZHRvcEfL" role="1S8S4N">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
            </node>
          </node>
          <node concept="c0U19" id="5MdZHRvcsUv" role="3XIRFZ">
            <node concept="3XIRFW" id="5MdZHRvcsUw" role="c0U17">
              <node concept="1_9egQ" id="5MdZHRvcsUx" role="3XIRFZ">
                <node concept="30IBQI" id="5MdZHRvcsUy" role="1_9egR">
                  <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                  <node concept="2H6loZ" id="5MdZHRvcsUz" role="1_9fRO">
                    <ref role="2H6loY" node="5zHWU$GzTik" resolve="pwmForward" />
                  </node>
                  <node concept="1S8S4T" id="5MdZHRvcsU$" role="2H6KYo">
                    <node concept="3ZVu4v" id="5MdZHRvcsU_" role="1S8S4V">
                      <ref role="3ZVs_2" node="5MdZHRvcsUr" resolve="pwmValue" />
                    </node>
                    <node concept="26Vqp4" id="5MdZHRvcsUA" role="1S8S4N">
                      <property role="2caQfQ" value="false" />
                      <property role="2c7vTL" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1_9egQ" id="5MdZHRvcsUB" role="3XIRFZ">
                <node concept="30IBQI" id="5MdZHRvcsUC" role="1_9egR">
                  <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                  <node concept="2H6loZ" id="5MdZHRvcsUD" role="1_9fRO">
                    <ref role="2H6loY" node="5zHWU$GzTiA" resolve="pwmBackward" />
                  </node>
                  <node concept="3TlMh9" id="5MdZHRvcsUE" role="2H6KYo">
                    <property role="2hmy$m" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tl9Jp" id="5MdZHRvcsUF" role="c0U16">
              <node concept="3ZVu4v" id="5MdZHRvcsUG" role="3TlMhI">
                <ref role="3ZVs_2" node="5MdZHRvcsUr" resolve="pwmValue" />
              </node>
              <node concept="3TlMh9" id="5MdZHRvcsUH" role="3TlMhJ">
                <property role="2hmy$m" value="0" />
              </node>
            </node>
            <node concept="1ly_i6" id="5MdZHRvcsUI" role="ggAap">
              <node concept="3XIRFW" id="5MdZHRvcsUJ" role="1ly_ph">
                <node concept="1_9egQ" id="5MdZHRvcsUK" role="3XIRFZ">
                  <node concept="30IBQI" id="5MdZHRvcsUL" role="1_9egR">
                    <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                    <node concept="2H6loZ" id="5MdZHRvcsUM" role="1_9fRO">
                      <ref role="2H6loY" node="5zHWU$GzTik" resolve="pwmForward" />
                    </node>
                    <node concept="3TlMh9" id="5MdZHRvcsUN" role="2H6KYo">
                      <property role="2hmy$m" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="1_9egQ" id="5MdZHRvcsUO" role="3XIRFZ">
                  <node concept="30IBQI" id="5MdZHRvcsUP" role="1_9egR">
                    <ref role="2H6Oet" to="t6m2:5zHWU$GxIaq" resolve="setDutyCycle" />
                    <node concept="2H6loZ" id="5MdZHRvcsUQ" role="1_9fRO">
                      <ref role="2H6loY" node="5zHWU$GzTiA" resolve="pwmBackward" />
                    </node>
                    <node concept="1S8S4T" id="5MdZHRvcsUR" role="2H6KYo">
                      <node concept="1FllXc" id="5MdZHRvcsUS" role="1S8S4V">
                        <node concept="2BPB98" id="5MdZHRvcsUT" role="1_9fRO">
                          <node concept="3ZVu4v" id="5MdZHRvcsUU" role="1_9fRO">
                            <ref role="3ZVs_2" node="5MdZHRvcsUr" resolve="pwmValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="26Vqp4" id="5MdZHRvcsUV" role="1S8S4N">
                        <property role="2caQfQ" value="false" />
                        <property role="2c7vTL" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5MdZHRvcqE$" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$GzTuP" resolve="motor" />
          <ref role="1ZwxE2" node="5MdZHRvcn4b" resolve="setRelativePower" />
        </node>
        <node concept="19Rifw" id="5MdZHRvcqE_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5MdZHRvcqEA" role="1UOdpc">
          <property role="TrG5h" value="power" />
          <node concept="2fgwQN" id="5MdZHRvcqEB" role="2C2TGm">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzTti" role="N3F5h">
      <property role="TrG5h" value="empty_1436268444956_59" />
    </node>
    <node concept="2EWCuY" id="5zHWU$G$bUX" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="Wheel" />
      <node concept="2EWHp_" id="5zHWU$G$c5h" role="2RW2fA">
        <property role="TrG5h" value="wheel" />
        <ref role="2EX0h9" node="5zHWU$G$bxq" resolve="IWheel" />
      </node>
      <node concept="2EWHp$" id="5zHWU$G$c5F" role="2RW2fA">
        <property role="TrG5h" value="motor" />
        <ref role="2EX0h9" node="5zHWU$GzTng" resolve="IMotor" />
      </node>
      <node concept="3Khz0B" id="7tTb7FvsEOD" role="2RW2fA" />
      <node concept="EbCE0" id="7tTb7FvsEF1" role="2RW2fA">
        <property role="TrG5h" value="m_speed" />
        <node concept="CIVk6" id="7tTb7FvsEF2" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FvsEF3" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FvsEF4" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FvsEF5" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="7tTb7FvsEF6" role="EbCE5">
          <node concept="3TlMh9" id="7tTb7FvsEF7" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="7tTb7FvsEF8" role="CIwXZ">
            <node concept="CIsvn" id="7tTb7FvsEF9" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="5zHWU$G$jI4" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$G$c5P" role="2RW2fA">
        <property role="TrG5h" value="wheel_setSpeed" />
        <node concept="3XIRFW" id="5zHWU$G$c5Q" role="2EWMhI">
          <node concept="1_9egQ" id="7tTb7FvsKsB" role="3XIRFZ">
            <node concept="3pqW6w" id="7tTb7FvsK_9" role="1_9egR">
              <node concept="3ZUYvv" id="7tTb7FvsKCx" role="3TlMhJ">
                <ref role="3ZUYvu" node="5zHWU$G$c5U" resolve="speed" />
              </node>
              <node concept="EbZIE" id="7tTb7FvsKs_" role="3TlMhI">
                <ref role="EbZID" node="7tTb7FvsEF1" resolve="m_speed" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5zHWU$G$c7h" role="3XIRFZ">
            <node concept="30IBQI" id="5zHWU$G$g2H" role="1_9egR">
              <ref role="2H6Oet" node="5zHWU$GzTqX" resolve="setSpeed" />
              <node concept="2H6loZ" id="5zHWU$G$c7f" role="1_9fRO">
                <ref role="2H6loY" node="5zHWU$G$c5F" resolve="motor" />
              </node>
              <node concept="1PfFCI" id="5zHWU$G$m$V" role="2H6KYo">
                <ref role="1Pfwd7" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                <ref role="2yhJs8" to="g2ww:5zHWU$G$nuC" resolve="rps -&gt; rpm (any)" />
                <node concept="2BOcih" id="5zHWU$G$mhq" role="1Pfwd1">
                  <node concept="4ZOvp" id="5zHWU$G$toe" role="3TlMhJ">
                    <ref role="2DPCA0" node="5zHWU$G$rYB" resolve="WHEEL_CIRCUMFENCE" />
                  </node>
                  <node concept="3ZUYvv" id="5zHWU$G$mfS" role="3TlMhI">
                    <ref role="3ZUYvu" node="5zHWU$G$c5U" resolve="speed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5zHWU$G$c5S" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$G$c5h" resolve="wheel" />
          <ref role="1ZwxE2" node="5zHWU$G$bFu" resolve="setSpeed" />
        </node>
        <node concept="19Rifw" id="5zHWU$G$c5T" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5zHWU$G$c5U" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$c5V" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$c5W" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$c5X" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$c5Y" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tTb7FvsK49" role="2RW2fA" />
      <node concept="2EWDwb" id="7tTb7FvsJOq" role="2RW2fA">
        <property role="TrG5h" value="wheel_getSpeed" />
        <node concept="3XIRFW" id="7tTb7FvsJOr" role="2EWMhI">
          <node concept="2BFjQ_" id="7tTb7FvsJOy" role="3XIRFZ">
            <node concept="EbZIE" id="7tTb7FvsKjK" role="2BFjQA">
              <ref role="EbZID" node="7tTb7FvsEF1" resolve="m_speed" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7tTb7FvsJOt" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$G$c5h" resolve="wheel" />
          <ref role="1ZwxE2" node="7tTb7FvstYY" resolve="getSpeed" />
        </node>
        <node concept="CIVk6" id="7tTb7FvsJOu" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FvsJOv" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FvsJOw" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FvsJOx" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzZ1t" role="N3F5h">
      <property role="TrG5h" value="empty_1436268723731_62" />
    </node>
    <node concept="2EWCuY" id="5MdZHRvRTXh" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="WheelWithSensor" />
      <node concept="2EWHp_" id="5MdZHRvRXV8" role="2RW2fA">
        <property role="TrG5h" value="wheel" />
        <ref role="2EX0h9" node="5zHWU$G$bxq" resolve="IWheel" />
      </node>
      <node concept="2EWHp$" id="5MdZHRvRXVx" role="2RW2fA">
        <property role="TrG5h" value="pid" />
        <ref role="2EX0h9" to="lmqm:5$_GT_vvVfu" resolve="IPidController" />
      </node>
      <node concept="3Khz0B" id="7tTb7FvsEWO" role="2RW2fA" />
      <node concept="EbCE0" id="7tTb7Fvsu14" role="2RW2fA">
        <property role="TrG5h" value="m_speed" />
        <node concept="CIVk6" id="7tTb7Fvsu9z" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7Fvsu9y" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7Fvsu9$" role="CIVlq">
            <node concept="CIsvn" id="7tTb7Fvsuar" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="7tTb7Fvs_O8" role="EbCE5">
          <node concept="3TlMh9" id="7tTb7Fvs_O7" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="7tTb7Fvs_O9" role="CIwXZ">
            <node concept="CIsvn" id="7tTb7Fvs_Oa" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tTb7FvsHo7" role="2RW2fA" />
      <node concept="2EWDwb" id="5MdZHRvS46u" role="2RW2fA">
        <property role="TrG5h" value="wheel_setSpeed" />
        <node concept="3XIRFW" id="5MdZHRvS46v" role="2EWMhI">
          <node concept="1_9egQ" id="7tTb7Fvsuzr" role="3XIRFZ">
            <node concept="3pqW6w" id="7tTb7FvsuFX" role="1_9egR">
              <node concept="3ZUYvv" id="7tTb7FvsuIF" role="3TlMhJ">
                <ref role="3ZUYvu" node="5MdZHRvS46z" resolve="speed" />
              </node>
              <node concept="EbZIE" id="7tTb7Fvsuzp" role="3TlMhI">
                <ref role="EbZID" node="7tTb7Fvsu14" resolve="m_speed" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5MdZHRvS4yE" role="3XIRFZ">
            <node concept="30IBQI" id="5MdZHRvS4FY" role="1_9egR">
              <ref role="2H6Oet" to="lmqm:5$_GT_vvVkl" resolve="setSetpoint" />
              <node concept="1PfFCI" id="5MdZHRvS48$" role="2H6KYo">
                <ref role="1Pfwd7" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                <ref role="2yhJs8" to="g2ww:5zHWU$G$nuC" resolve="rps -&gt; rpm (any)" />
                <node concept="2BOcih" id="5MdZHRvS48_" role="1Pfwd1">
                  <node concept="4ZOvp" id="5MdZHRvS48A" role="3TlMhJ">
                    <ref role="2DPCA0" node="5zHWU$G$rYB" resolve="WHEEL_CIRCUMFENCE" />
                  </node>
                  <node concept="3ZUYvv" id="5MdZHRvS48B" role="3TlMhI">
                    <ref role="3ZUYvu" node="5MdZHRvS46z" resolve="speed" />
                  </node>
                </node>
              </node>
              <node concept="2H6loZ" id="5MdZHRvS4yC" role="1_9fRO">
                <ref role="2H6loY" node="5MdZHRvRXVx" resolve="pid" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5MdZHRvS46x" role="2EWDeT">
          <ref role="1ZwSu5" node="5MdZHRvRXV8" resolve="wheel" />
          <ref role="1ZwxE2" node="5zHWU$G$bFu" resolve="setSpeed" />
        </node>
        <node concept="19Rifw" id="5MdZHRvS46y" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5MdZHRvS46z" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5MdZHRvS46$" role="2C2TGm">
            <node concept="2fgwQN" id="5MdZHRvS46_" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5MdZHRvS46A" role="CIVlq">
              <node concept="CIsvn" id="5MdZHRvS46B" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2EWDwb" id="7tTb7Fvsub9" role="2RW2fA">
        <property role="TrG5h" value="wheel_getSpeed" />
        <node concept="3XIRFW" id="7tTb7Fvsuba" role="2EWMhI">
          <node concept="2BFjQ_" id="7tTb7Fvsubh" role="3XIRFZ">
            <node concept="EbZIE" id="7tTb7Fvsuq$" role="2BFjQA">
              <ref role="EbZID" node="7tTb7Fvsu14" resolve="m_speed" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7tTb7Fvsubc" role="2EWDeT">
          <ref role="1ZwSu5" node="5MdZHRvRXV8" resolve="wheel" />
          <ref role="1ZwxE2" node="7tTb7FvstYY" resolve="getSpeed" />
        </node>
        <node concept="CIVk6" id="7tTb7Fvsubd" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7Fvsube" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7Fvsubf" role="CIVlq">
            <node concept="CIsvn" id="7tTb7Fvsubg" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="5MdZHRvRQ2S" role="N3F5h">
      <property role="TrG5h" value="empty_1438932187772_9" />
    </node>
    <node concept="2EWCuY" id="7tTb7FuPgGx" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="VirtualWheel" />
      <node concept="2EWHp_" id="7tTb7FuPj3h" role="2RW2fA">
        <property role="TrG5h" value="wheel" />
        <ref role="2EX0h9" node="5zHWU$G$bxq" resolve="IWheel" />
      </node>
      <node concept="2EWHp_" id="7tTb7FuPj3z" role="2RW2fA">
        <property role="TrG5h" value="clock" />
        <ref role="2EX0h9" to="ec8n:exHFgzK8Pv" resolve="IRunnable" />
      </node>
      <node concept="3Khz0B" id="7tTb7FuPj3D" role="2RW2fA" />
      <node concept="EbCE0" id="7tTb7FuPj41" role="2RW2fA">
        <property role="TrG5h" value="deltaT" />
        <property role="3R_39t" value="true" />
        <node concept="CIVk6" id="7tTb7FuPHqr" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FuPHqq" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPHqs" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FuPHAX" role="CIi4h">
              <ref role="CIi3I" to="cmgk:6TeNRL7trCJ" resolve="s" />
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="7tTb7FuP_D7" role="2RW2fA">
        <property role="TrG5h" value="diskSegments" />
        <property role="3R_39t" value="true" />
        <node concept="26Vqp4" id="7tTb7FuP_D5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="EbCE0" id="7tTb7FuPJrr" role="2RW2fA">
        <property role="TrG5h" value="distancePerSegment" />
        <node concept="CIVk6" id="7tTb7FuPJHh" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FuPJHg" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPJHi" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FuPJI9" role="CIi4h">
              <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="7tTb7FuPK2N" role="EbCE5">
          <node concept="3TlMh9" id="7tTb7FuPK2M" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPK2O" role="CIwXZ">
            <node concept="CIsvn" id="7tTb7FuPK2P" role="CIi4h">
              <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tTb7FuP_RE" role="2RW2fA" />
      <node concept="EbCE0" id="7tTb7FuPj7L" role="2RW2fA">
        <property role="TrG5h" value="m_speed" />
        <node concept="CIVk6" id="7tTb7FuPj9a" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FuPj99" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPj9b" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FuPja2" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="7tTb7FuPkub" role="EbCE5">
          <node concept="3TlMh9" id="7tTb7FuPkua" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPkuc" role="CIwXZ">
            <node concept="CIsvn" id="7tTb7FuPkud" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="7tTb7FuPA18" role="2RW2fA">
        <property role="TrG5h" value="m_distance" />
        <node concept="CIVk6" id="7tTb7FuPA6f" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FuPA6e" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPA6g" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FuPA77" role="CIi4h">
              <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="7tTb7FuPAoV" role="EbCE5">
          <node concept="3TlMh9" id="7tTb7FuPAoU" role="CIrOC">
            <property role="2hmy$m" value="0.0" />
          </node>
          <node concept="CIsGf" id="7tTb7FuPAoW" role="CIwXZ">
            <node concept="CIsvn" id="7tTb7FuPAoX" role="CIi4h">
              <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="7tTb7FuPji9" role="2RW2fA">
        <property role="TrG5h" value="tickError" />
        <property role="3R_39t" value="true" />
        <node concept="3wxxNl" id="7tTb7FuPjjh" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="26Vqqz" id="7tTb7FuPji7" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tTb7FuPjg9" role="2RW2fA" />
      <node concept="2EWDwb" id="7tTb7FuPIR0" role="2RW2fA">
        <property role="TrG5h" value="setup" />
        <node concept="3XIRFW" id="7tTb7FuPIR1" role="2EWMhI">
          <node concept="1_9egQ" id="7tTb7FuPK4k" role="3XIRFZ">
            <node concept="3pqW6w" id="7tTb7FuPK5t" role="1_9egR">
              <node concept="2BOcih" id="7tTb7FuPKf6" role="3TlMhJ">
                <node concept="1S8S4T" id="7tTb7FuPO8N" role="3TlMhJ">
                  <node concept="EbZIE" id="7tTb7FuPMaD" role="1S8S4V">
                    <ref role="EbZID" node="7tTb7FuP_D7" resolve="diskSegments" />
                  </node>
                  <node concept="2fgwQN" id="7tTb7FuPQ5C" role="1S8S4N">
                    <property role="2caQfQ" value="false" />
                    <property role="2c7vTL" value="false" />
                  </node>
                </node>
                <node concept="4ZOvp" id="7tTb7FuPK7_" role="3TlMhI">
                  <ref role="2DPCA0" node="5zHWU$G$rYB" resolve="WHEEL_CIRCUMFENCE" />
                </node>
              </node>
              <node concept="EbZIE" id="7tTb7FuPK4i" role="3TlMhI">
                <ref role="EbZID" node="7tTb7FuPJrr" resolve="distancePerSegment" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="7tTb7FuPJ8M" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2cabNp" id="7tTb7FuPJ9z" role="2EWDeT" />
      </node>
      <node concept="3Khz0B" id="7tTb7FuPI_m" role="2RW2fA" />
      <node concept="2EWDwb" id="7tTb7FuPj4K" role="2RW2fA">
        <property role="TrG5h" value="wheel_setSpeed" />
        <node concept="3XIRFW" id="7tTb7FuPj4L" role="2EWMhI">
          <node concept="1_9egQ" id="7tTb7FuPjaM" role="3XIRFZ">
            <node concept="3pqW6w" id="7tTb7FuPjbQ" role="1_9egR">
              <node concept="3ZUYvv" id="7tTb7FuPjdk" role="3TlMhJ">
                <ref role="3ZUYvu" node="7tTb7FuPj4P" resolve="speed" />
              </node>
              <node concept="EbZIE" id="7tTb7FuPjaK" role="3TlMhI">
                <ref role="EbZID" node="7tTb7FuPj7L" resolve="m_speed" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7tTb7FuPj4N" role="2EWDeT">
          <ref role="1ZwSu5" node="7tTb7FuPj3h" resolve="wheel" />
          <ref role="1ZwxE2" node="5zHWU$G$bFu" resolve="setSpeed" />
        </node>
        <node concept="19Rifw" id="7tTb7FuPj4O" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="7tTb7FuPj4P" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="7tTb7FuPj4Q" role="2C2TGm">
            <node concept="2fgwQN" id="7tTb7FuPj4R" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="7tTb7FuPj4S" role="CIVlq">
              <node concept="CIsvn" id="7tTb7FuPj4T" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="7tTb7FuPjfe" role="2RW2fA" />
      <node concept="2EWDwb" id="7tTb7FuPj6c" role="2RW2fA">
        <property role="TrG5h" value="clock_run" />
        <node concept="3XIRFW" id="7tTb7FuPj6d" role="2EWMhI">
          <node concept="1_9egQ" id="7tTb7FuPAtT" role="3XIRFZ">
            <node concept="TPXPH" id="7tTb7FuPAyn" role="1_9egR">
              <node concept="2BOcij" id="7tTb7FuPACq" role="3TlMhJ">
                <node concept="EbZIE" id="7tTb7FuPAIW" role="3TlMhJ">
                  <ref role="EbZID" node="7tTb7FuPj41" resolve="deltaT" />
                </node>
                <node concept="EbZIE" id="7tTb7FuPA$9" role="3TlMhI">
                  <ref role="EbZID" node="7tTb7FuPj7L" resolve="m_speed" />
                </node>
              </node>
              <node concept="EbZIE" id="7tTb7FuPAtR" role="3TlMhI">
                <ref role="EbZID" node="7tTb7FuPA18" resolve="m_distance" />
              </node>
            </node>
          </node>
          <node concept="3XISUE" id="7tTb7FuPI22" role="3XIRFZ" />
          <node concept="27v$Wf" id="7tTb7FuPV8P" role="3XIRFZ">
            <node concept="3XIRFW" id="7tTb7FuPV8Q" role="27v$W9">
              <node concept="c0U19" id="7tTb7FuPVQY" role="3XIRFZ">
                <node concept="3XIRFW" id="7tTb7FuPVQZ" role="c0U17">
                  <node concept="1_9egQ" id="7tTb7FuPWer" role="3XIRFZ">
                    <node concept="3TM6Ez" id="7tTb7FuPWep" role="1_9egR">
                      <node concept="2BPB98" id="7tTb7FuPWeD" role="1_9fRO">
                        <node concept="3wxyx2" id="7tTb7FuPWeT" role="1_9fRO">
                          <node concept="EbZIE" id="7tTb7FuPWfb" role="1_9fRO">
                            <ref role="EbZID" node="7tTb7FuPji9" resolve="tickError" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tl9Jn" id="7tTb7FuPVWg" role="c0U16">
                  <node concept="3TlMh9" id="7tTb7FuPVWj" role="3TlMhJ">
                    <property role="2hmy$m" value="127" />
                  </node>
                  <node concept="3wxyx2" id="7tTb7FuPVRy" role="3TlMhI">
                    <node concept="EbZIE" id="7tTb7FuPVRJ" role="1_9fRO">
                      <ref role="EbZID" node="7tTb7FuPji9" resolve="tickError" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1_9egQ" id="7tTb7FuPWmj" role="3XIRFZ">
                <node concept="3omEAT" id="7tTb7FuPWu0" role="1_9egR">
                  <node concept="EbZIE" id="7tTb7FuPYBA" role="3TlMhJ">
                    <ref role="EbZID" node="7tTb7FuPJrr" resolve="distancePerSegment" />
                  </node>
                  <node concept="EbZIE" id="7tTb7FuPWmh" role="3TlMhI">
                    <ref role="EbZID" node="7tTb7FuPA18" resolve="m_distance" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tl9Jr" id="7tTb7FuPVq5" role="27v$We">
              <node concept="EbZIE" id="7tTb7FuPVAB" role="3TlMhJ">
                <ref role="EbZID" node="7tTb7FuPJrr" resolve="distancePerSegment" />
              </node>
              <node concept="EbZIE" id="7tTb7FuPVoR" role="3TlMhI">
                <ref role="EbZID" node="7tTb7FuPA18" resolve="m_distance" />
              </node>
            </node>
          </node>
          <node concept="27v$Wf" id="7tTb7FuQ0NO" role="3XIRFZ">
            <node concept="3XIRFW" id="7tTb7FuQ0NP" role="27v$W9">
              <node concept="c0U19" id="7tTb7FuQ0NQ" role="3XIRFZ">
                <node concept="3XIRFW" id="7tTb7FuQ0NR" role="c0U17">
                  <node concept="1_9egQ" id="7tTb7FuQ0NS" role="3XIRFZ">
                    <node concept="1FldXs" id="7tTb7FuQ8pL" role="1_9egR">
                      <node concept="2BPB98" id="7tTb7FuQ0NU" role="1_9fRO">
                        <node concept="3wxyx2" id="7tTb7FuQ0NV" role="1_9fRO">
                          <node concept="EbZIE" id="7tTb7FuQ0NW" role="1_9fRO">
                            <ref role="EbZID" node="7tTb7FuPji9" resolve="tickError" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tl9Jr" id="7tTb7FuQ83l" role="c0U16">
                  <node concept="3wxyx2" id="7tTb7FuQ83o" role="3TlMhI">
                    <node concept="EbZIE" id="7tTb7FuQ83p" role="1_9fRO">
                      <ref role="EbZID" node="7tTb7FuPji9" resolve="tickError" />
                    </node>
                  </node>
                  <node concept="3TlMh9" id="7tTb7FuQ83n" role="3TlMhJ">
                    <property role="2hmy$m" value="-127" />
                  </node>
                </node>
              </node>
              <node concept="1_9egQ" id="7tTb7FuQ0O1" role="3XIRFZ">
                <node concept="TPXPH" id="7tTb7FuQ8xb" role="1_9egR">
                  <node concept="EbZIE" id="7tTb7FuQ8xe" role="3TlMhI">
                    <ref role="EbZID" node="7tTb7FuPA18" resolve="m_distance" />
                  </node>
                  <node concept="EbZIE" id="7tTb7FuQ8xd" role="3TlMhJ">
                    <ref role="EbZID" node="7tTb7FuPJrr" resolve="distancePerSegment" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tl9Jn" id="7tTb7FuQ3l$" role="27v$We">
              <node concept="EbZIE" id="7tTb7FuQ3lB" role="3TlMhI">
                <ref role="EbZID" node="7tTb7FuPA18" resolve="m_distance" />
              </node>
              <node concept="1FllXc" id="7tTb7FuQ5Mq" role="3TlMhJ">
                <node concept="EbZIE" id="7tTb7FuQ3lA" role="1_9fRO">
                  <ref role="EbZID" node="7tTb7FuPJrr" resolve="distancePerSegment" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7tTb7FuPj6f" role="2EWDeT">
          <ref role="1ZwSu5" node="7tTb7FuPj3z" resolve="clock" />
          <ref role="1ZwxE2" to="ec8n:exHFgzK8US" resolve="run" />
        </node>
        <node concept="19Rifw" id="7tTb7FuPj6g" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2EWDwb" id="7tTb7FvsC6g" role="2RW2fA">
        <property role="TrG5h" value="wheel_getSpeed" />
        <node concept="3XIRFW" id="7tTb7FvsC6h" role="2EWMhI">
          <node concept="2BFjQ_" id="7tTb7FvsC6o" role="3XIRFZ">
            <node concept="EbZIE" id="7tTb7FvsED9" role="2BFjQA">
              <ref role="EbZID" node="7tTb7FuPj7L" resolve="m_speed" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="7tTb7FvsC6j" role="2EWDeT">
          <ref role="1ZwSu5" node="7tTb7FuPj3h" resolve="wheel" />
          <ref role="1ZwxE2" node="7tTb7FvstYY" resolve="getSpeed" />
        </node>
        <node concept="CIVk6" id="7tTb7FvsC6k" role="2C2TGm">
          <node concept="2fgwQN" id="7tTb7FvsC6l" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="7tTb7FvsC6m" role="CIVlq">
            <node concept="CIsvn" id="7tTb7FvsC6n" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="7tTb7FuPssA" role="N3F5h">
      <property role="TrG5h" value="empty_1438947763245_2" />
    </node>
    <node concept="2NXPZ9" id="7tTb7FuPsGP" role="N3F5h">
      <property role="TrG5h" value="empty_1438947763435_3" />
    </node>
    <node concept="2EWCuY" id="5zHWU$GzTij" role="N3F5h">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="Chassis" />
      <node concept="2EWHp_" id="5zHWU$G$aly" role="2RW2fA">
        <property role="TrG5h" value="chassis" />
        <ref role="2EX0h9" node="5zHWU$GzZa_" resolve="IChassis" />
      </node>
      <node concept="2EWHp$" id="5zHWU$G$akp" role="2RW2fA">
        <property role="TrG5h" value="leftWheel" />
        <ref role="2EX0h9" node="5zHWU$G$bxq" resolve="IWheel" />
      </node>
      <node concept="2EWHp$" id="5zHWU$G$akU" role="2RW2fA">
        <property role="TrG5h" value="rightWheel" />
        <ref role="2EX0h9" node="5zHWU$G$bxq" resolve="IWheel" />
      </node>
      <node concept="EbCE0" id="5zHWU$G_12u" role="2RW2fA">
        <property role="TrG5h" value="m_rotation" />
        <node concept="CIVk6" id="5zHWU$G_13D" role="2C2TGm">
          <node concept="2fgwQN" id="5zHWU$G_13C" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="5zHWU$G_13E" role="CIVlq">
            <node concept="CIsvn" id="5$_GT_vwLyc" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="5zHWU$G_1Pk" role="EbCE5">
          <node concept="3TlMh9" id="5zHWU$G_1Pj" role="CIrOC">
            <property role="2hmy$m" value="0" />
          </node>
          <node concept="CIsGf" id="5zHWU$G_1Pl" role="CIwXZ">
            <node concept="CIsvn" id="5$_GT_vwNxa" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
            </node>
          </node>
        </node>
        <node concept="1z9TsT" id="5zHWU$G_2L$" role="lGtFl">
          <node concept="OjmMv" id="5zHWU$G_2L_" role="1w35rA">
            <node concept="19SGf9" id="5zHWU$G_2LA" role="OjmMu">
              <node concept="19SUe$" id="5zHWU$G_2LB" role="19SJt6">
                <property role="19SUeA" value="&gt; 0 rotate left, &lt; 0 rotate right" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="EbCE0" id="5zHWU$G_1bI" role="2RW2fA">
        <property role="TrG5h" value="m_speed" />
        <node concept="CIVk6" id="5zHWU$G_1d3" role="2C2TGm">
          <node concept="2fgwQN" id="5zHWU$G_1d2" role="UxbcT">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
          <node concept="CIsGf" id="5zHWU$G_1d4" role="CIVlq">
            <node concept="CIsvn" id="5zHWU$G_1s$" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
        <node concept="CIdvy" id="5zHWU$G_20Y" role="EbCE5">
          <node concept="3TlMh9" id="5zHWU$G_20X" role="CIrOC">
            <property role="2hmy$m" value="0" />
          </node>
          <node concept="CIsGf" id="5zHWU$G_20Z" role="CIwXZ">
            <node concept="CIsvn" id="5zHWU$G_210" role="CIi4h">
              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="5zHWU$G_10q" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$G$amE" role="2RW2fA">
        <property role="TrG5h" value="chassis_setRadius" />
        <node concept="3XIRFW" id="5zHWU$G$amF" role="2EWMhI">
          <node concept="3XIRlf" id="5$_GT_vyph6" role="3XIRFZ">
            <property role="TrG5h" value="circumfence" />
            <node concept="CIVk6" id="5$_GT_vyDfE" role="2C2TGm">
              <node concept="2fgwQN" id="5$_GT_vyDfD" role="UxbcT">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
              <node concept="CIsGf" id="5$_GT_vyDfF" role="CIVlq">
                <node concept="CIsvn" id="5$_GT_vyEQp" role="CIi4h">
                  <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
                </node>
              </node>
            </node>
            <node concept="2BOcij" id="5$_GT_vyppL" role="3XIe9u">
              <node concept="4ZOvp" id="5$_GT_vyppM" role="3TlMhJ">
                <ref role="2DPCA0" node="1a4kF8yJZm6" resolve="PI" />
              </node>
              <node concept="2BOcij" id="5$_GT_vyppN" role="3TlMhI">
                <node concept="3TlMh9" id="5$_GT_vyppO" role="3TlMhJ">
                  <property role="2hmy$m" value="2" />
                </node>
                <node concept="3ZUYvv" id="5$_GT_vyppP" role="3TlMhI">
                  <ref role="3ZUYvu" node="5zHWU$G_$c4" resolve="radius" />
                </node>
              </node>
            </node>
          </node>
          <node concept="c0U19" id="5$_GT_v_5bQ" role="3XIRFZ">
            <node concept="3XIRFW" id="5$_GT_v_5bR" role="c0U17">
              <node concept="c0U19" id="5$_GT_vFPjE" role="3XIRFZ">
                <node concept="3XIRFW" id="5$_GT_vFPjF" role="c0U17">
                  <node concept="1_9egQ" id="5$_GT_v_o6u" role="3XIRFZ">
                    <node concept="3pqW6w" id="5$_GT_v_o7y" role="1_9egR">
                      <node concept="CIdvy" id="5$_GT_v_pLR" role="3TlMhJ">
                        <node concept="3TlMh9" id="5$_GT_v_pLQ" role="CIrOC">
                          <property role="2hmy$m" value="0" />
                        </node>
                        <node concept="CIsGf" id="5$_GT_v_pLS" role="CIwXZ">
                          <node concept="CIsvn" id="5$_GT_v_pLT" role="CIi4h">
                            <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                          </node>
                        </node>
                      </node>
                      <node concept="EbZIE" id="5$_GT_v_o6t" role="3TlMhI">
                        <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TlM44" id="5$_GT_vFQMP" role="c0U16">
                  <node concept="CIdvy" id="5$_GT_vFTXE" role="3TlMhJ">
                    <node concept="3TlMh9" id="5$_GT_vFTXD" role="CIrOC">
                      <property role="2hmy$m" value="0.0" />
                    </node>
                    <node concept="CIsGf" id="5$_GT_vFTXF" role="CIwXZ">
                      <node concept="CIsvn" id="5$_GT_vFTXG" role="CIi4h">
                        <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3ZUYvv" id="5$_GT_vFQLB" role="3TlMhI">
                    <ref role="3ZUYvu" node="5zHWU$G_$c4" resolve="radius" />
                  </node>
                </node>
                <node concept="gg_gk" id="5$_GT_vFX3e" role="gg_kh">
                  <node concept="3XIRFW" id="5$_GT_vFX3f" role="gg_gl">
                    <node concept="1_9egQ" id="5$_GT_vG3hi" role="3XIRFZ">
                      <node concept="3pqW6w" id="5$_GT_vG3im" role="1_9egR">
                        <node concept="EbZIE" id="5$_GT_vG3hh" role="3TlMhI">
                          <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
                        </node>
                        <node concept="1PfFCI" id="5$_GT_vIXmr" role="3TlMhJ">
                          <ref role="1Pfwd7" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                          <ref role="2yhJs8" to="g2ww:5zHWU$G$nuC" resolve="rps -&gt; rpm (any)" />
                          <node concept="2BOcij" id="5$_GT_vLzzq" role="1Pfwd1">
                            <node concept="3TlMh9" id="5$_GT_vLzzt" role="3TlMhJ">
                              <property role="2hmy$m" value="2" />
                            </node>
                            <node concept="2BOcih" id="5$_GT_vISwm" role="3TlMhI">
                              <node concept="2BPB98" id="5$_GT_vIU6k" role="3TlMhJ">
                                <node concept="2BOcij" id="5$_GT_vIIF4" role="1_9fRO">
                                  <node concept="4ZOvp" id="5$_GT_vIKho" role="3TlMhJ">
                                    <ref role="2DPCA0" node="1a4kF8yJZm6" resolve="PI" />
                                  </node>
                                  <node concept="4ZOvp" id="5$_GT_vIGVN" role="3TlMhI">
                                    <ref role="2DPCA0" node="5zHWU$G_3Sc" resolve="WHEEL_DISTANCE" />
                                  </node>
                                </node>
                              </node>
                              <node concept="EbZIE" id="5$_GT_vIN_9" role="3TlMhI">
                                <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1_9egQ" id="5$_GT_vG85w" role="3XIRFZ">
                      <node concept="3pqW6w" id="5$_GT_vG9Dt" role="1_9egR">
                        <node concept="CIdvy" id="5$_GT_vIDIH" role="3TlMhJ">
                          <node concept="3TlMh9" id="5$_GT_vIDIG" role="CIrOC">
                            <property role="2hmy$m" value="0.0" />
                          </node>
                          <node concept="CIsGf" id="5$_GT_vIDII" role="CIwXZ">
                            <node concept="CIsvn" id="5$_GT_vIDIJ" role="CIi4h">
                              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                            </node>
                          </node>
                        </node>
                        <node concept="EbZIE" id="5$_GT_vG85u" role="3TlMhI">
                          <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tl9Jr" id="5$_GT_vFYzL" role="gg_gt">
                    <node concept="CIdvy" id="5$_GT_vG1Ku" role="3TlMhJ">
                      <node concept="3TlMh9" id="5$_GT_vG1Kt" role="CIrOC">
                        <property role="2hmy$m" value="0.0" />
                      </node>
                      <node concept="CIsGf" id="5$_GT_vG1Kv" role="CIwXZ">
                        <node concept="CIsvn" id="5$_GT_vG1Kw" role="CIi4h">
                          <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
                        </node>
                      </node>
                    </node>
                    <node concept="3ZUYvv" id="5$_GT_vFYy$" role="3TlMhI">
                      <ref role="3ZUYvu" node="5zHWU$G_$c4" resolve="radius" />
                    </node>
                  </node>
                </node>
                <node concept="1ly_i6" id="5$_GT_vGl0A" role="ggAap">
                  <node concept="3XIRFW" id="5$_GT_vGl0B" role="1ly_ph">
                    <node concept="1_9egQ" id="5$_GT_vGmD3" role="3XIRFZ">
                      <node concept="3pqW6w" id="5$_GT_vGmD4" role="1_9egR">
                        <node concept="EbZIE" id="5$_GT_vGmD9" role="3TlMhI">
                          <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
                        </node>
                        <node concept="1FllXc" id="5$_GT_vJ4yS" role="3TlMhJ">
                          <node concept="1PfFCI" id="5$_GT_vJ2uQ" role="1_9fRO">
                            <ref role="2yhJs8" to="g2ww:5zHWU$G$nuC" resolve="rps -&gt; rpm (any)" />
                            <ref role="1Pfwd7" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                            <node concept="2BOcij" id="5$_GT_vL_BU" role="1Pfwd1">
                              <node concept="3TlMh9" id="5$_GT_vL_BX" role="3TlMhJ">
                                <property role="2hmy$m" value="2" />
                              </node>
                              <node concept="2BOcih" id="5$_GT_vJ2uR" role="3TlMhI">
                                <node concept="2BPB98" id="5$_GT_vJ2uS" role="3TlMhJ">
                                  <node concept="2BOcij" id="5$_GT_vJ2uT" role="1_9fRO">
                                    <node concept="4ZOvp" id="5$_GT_vJ2uU" role="3TlMhJ">
                                      <ref role="2DPCA0" node="1a4kF8yJZm6" resolve="PI" />
                                    </node>
                                    <node concept="4ZOvp" id="5$_GT_vJ2uV" role="3TlMhI">
                                      <ref role="2DPCA0" node="5zHWU$G_3Sc" resolve="WHEEL_DISTANCE" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="EbZIE" id="5$_GT_vJ2uW" role="3TlMhI">
                                  <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1_9egQ" id="5$_GT_vGmDa" role="3XIRFZ">
                      <node concept="3pqW6w" id="5$_GT_vGmDb" role="1_9egR">
                        <node concept="CIdvy" id="5$_GT_vI$E2" role="3TlMhJ">
                          <node concept="3TlMh9" id="5$_GT_vI$E1" role="CIrOC">
                            <property role="2hmy$m" value="0.0" />
                          </node>
                          <node concept="CIsGf" id="5$_GT_vI$E3" role="CIwXZ">
                            <node concept="CIsvn" id="5$_GT_vI$E4" role="CIi4h">
                              <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                            </node>
                          </node>
                        </node>
                        <node concept="EbZIE" id="5$_GT_vGmDg" role="3TlMhI">
                          <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2EHzL6" id="5$_GT_v_cuh" role="c0U16">
              <node concept="3Tl9Jn" id="5$_GT_v_fkd" role="3TlMhJ">
                <node concept="CIdvy" id="5$_GT_v_mE9" role="3TlMhJ">
                  <node concept="3TlMh9" id="5$_GT_v_mE8" role="CIrOC">
                    <property role="2hmy$m" value="0.001" />
                  </node>
                  <node concept="CIsGf" id="5$_GT_v_mEa" role="CIwXZ">
                    <node concept="CIsvn" id="5$_GT_v_mEb" role="CIi4h">
                      <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
                    </node>
                  </node>
                </node>
                <node concept="3ZUYvv" id="5$_GT_v_dRX" role="3TlMhI">
                  <ref role="3ZUYvu" node="5zHWU$G_$c4" resolve="radius" />
                </node>
              </node>
              <node concept="3Tl9Jn" id="5$_GT_v_b3e" role="3TlMhI">
                <node concept="3ZUYvv" id="5$_GT_v_csu" role="3TlMhJ">
                  <ref role="3ZUYvu" node="5zHWU$G_$c4" resolve="radius" />
                </node>
                <node concept="CIdvy" id="5$_GT_v_ldK" role="3TlMhI">
                  <node concept="3TlMh9" id="5$_GT_v_ldJ" role="CIrOC">
                    <property role="2hmy$m" value="-0.001" />
                  </node>
                  <node concept="CIsGf" id="5$_GT_v_ldL" role="CIwXZ">
                    <node concept="CIsvn" id="5$_GT_v_ldM" role="CIi4h">
                      <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ly_i6" id="5$_GT_v_rfB" role="ggAap">
              <node concept="3XIRFW" id="5$_GT_v_rfC" role="1ly_ph">
                <node concept="1_9egQ" id="5zHWU$G_245" role="3XIRFZ">
                  <node concept="3pqW6w" id="5zHWU$G_259" role="1_9egR">
                    <node concept="EbZIE" id="5zHWU$G_243" role="3TlMhI">
                      <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
                    </node>
                    <node concept="1PfFCI" id="5$_GT_vyJz8" role="3TlMhJ">
                      <ref role="1Pfwd7" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
                      <ref role="2yhJs8" to="g2ww:5zHWU$G$nuC" resolve="rps -&gt; rpm (any)" />
                      <node concept="2BOcih" id="5$_GT_vyx99" role="1Pfwd1">
                        <node concept="3ZVu4v" id="5$_GT_vyyFG" role="3TlMhJ">
                          <ref role="3ZVs_2" node="5$_GT_vyph6" resolve="circumfence" />
                        </node>
                        <node concept="EbZIE" id="5$_GT_vyv_O" role="3TlMhI">
                          <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5zHWU$G_2de" role="3XIRFZ">
            <node concept="2$_UoH" id="5zHWU$G_2dc" role="1_9egR">
              <ref role="2$_UoI" node="5zHWU$G_0Yu" resolve="updateMotors" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5zHWU$G$amH" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$G$aly" resolve="chassis" />
          <ref role="1ZwxE2" node="5$_GT_vxT0d" resolve="setRadius" />
        </node>
        <node concept="19Rifw" id="5zHWU$G_$c3" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5zHWU$G_$c4" role="1UOdpc">
          <property role="TrG5h" value="radius" />
          <node concept="CIVk6" id="5zHWU$G_$c5" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G_$c6" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G_$c7" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G_$c8" role="CIi4h">
                <ref role="CIi3I" to="cmgk:yGiRIF6RlO" resolve="m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="5zHWU$G$apo" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$G$amO" role="2RW2fA">
        <property role="TrG5h" value="chassis_setSpeed" />
        <node concept="3XIRFW" id="5zHWU$G$amP" role="2EWMhI">
          <node concept="1_9egQ" id="5zHWU$G_2dA" role="3XIRFZ">
            <node concept="3pqW6w" id="5zHWU$G_2eE" role="1_9egR">
              <node concept="3ZUYvv" id="5zHWU$G_2io" role="3TlMhJ">
                <ref role="3ZUYvu" node="5zHWU$G$amT" resolve="speed" />
              </node>
              <node concept="EbZIE" id="5zHWU$G_2d$" role="3TlMhI">
                <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5zHWU$G_2mJ" role="3XIRFZ">
            <node concept="2$_UoH" id="5zHWU$G_2mH" role="1_9egR">
              <ref role="2$_UoI" node="5zHWU$G_0Yu" resolve="updateMotors" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5zHWU$G$amR" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$G$aly" resolve="chassis" />
          <ref role="1ZwxE2" node="5zHWU$G$6nJ" resolve="setSpeed" />
        </node>
        <node concept="19Rifw" id="5zHWU$G$amS" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5zHWU$G$amT" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5zHWU$G$amU" role="2C2TGm">
            <node concept="2fgwQN" id="5zHWU$G$amV" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5zHWU$G$amW" role="CIVlq">
              <node concept="CIsvn" id="5zHWU$G$amX" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="5zHWU$G_0WI" role="2RW2fA" />
      <node concept="2EWDwb" id="1a4kF8yJV10" role="2RW2fA">
        <property role="TrG5h" value="chassis_spin" />
        <node concept="3XIRFW" id="1a4kF8yJV11" role="2EWMhI">
          <node concept="1_9egQ" id="1a4kF8yK13K" role="3XIRFZ">
            <node concept="3pqW6w" id="1a4kF8yK14O" role="1_9egR">
              <node concept="CIdvy" id="5$_GT_vxN8O" role="3TlMhJ">
                <node concept="3TlMh9" id="5$_GT_vxN8N" role="CIrOC">
                  <property role="2hmy$m" value="0.0" />
                </node>
                <node concept="CIsGf" id="5$_GT_vxN8P" role="CIwXZ">
                  <node concept="CIsvn" id="5$_GT_vxN8Q" role="CIi4h">
                    <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                  </node>
                </node>
              </node>
              <node concept="EbZIE" id="1a4kF8yK13I" role="3TlMhI">
                <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="1a4kF8yKdvB" role="3XIRFZ">
            <node concept="3pqW6w" id="1a4kF8yKf0Z" role="1_9egR">
              <node concept="3ZUYvv" id="5$_GT_vxPFO" role="3TlMhJ">
                <ref role="3ZUYvu" node="1a4kF8yJV15" resolve="speed" />
              </node>
              <node concept="EbZIE" id="1a4kF8yKdv_" role="3TlMhI">
                <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="1a4kF8yMReP" role="3XIRFZ">
            <node concept="2$_UoH" id="1a4kF8yMReN" role="1_9egR">
              <ref role="2$_UoI" node="5zHWU$G_0Yu" resolve="updateMotors" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="1a4kF8yJV13" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$G$aly" resolve="chassis" />
          <ref role="1ZwxE2" node="1a4kF8yJUXj" resolve="spin" />
        </node>
        <node concept="19Rifw" id="1a4kF8yJV14" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="1a4kF8yJV15" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="1a4kF8yJV16" role="2C2TGm">
            <node concept="2fgwQN" id="1a4kF8yJV17" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="1a4kF8yJV18" role="CIVlq">
              <node concept="CIsvn" id="1a4kF8yJV19" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2EWDwb" id="5$_GT_vy2pH" role="2RW2fA">
        <property role="TrG5h" value="chassis_setRotation" />
        <node concept="3XIRFW" id="5$_GT_vy2pI" role="2EWMhI">
          <node concept="1_9egQ" id="5$_GT_vy7OM" role="3XIRFZ">
            <node concept="3pqW6w" id="5$_GT_vy7PQ" role="1_9egR">
              <node concept="3ZUYvv" id="5$_GT_vy97u" role="3TlMhJ">
                <ref role="3ZUYvu" node="5$_GT_vy2pM" resolve="speed" />
              </node>
              <node concept="EbZIE" id="5$_GT_vy7OK" role="3TlMhI">
                <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5$_GT_vyapJ" role="3XIRFZ">
            <node concept="2$_UoH" id="5$_GT_vyapH" role="1_9egR">
              <ref role="2$_UoI" node="5zHWU$G_0Yu" resolve="updateMotors" />
            </node>
          </node>
        </node>
        <node concept="2EWDw0" id="5$_GT_vy2pK" role="2EWDeT">
          <ref role="1ZwSu5" node="5zHWU$G$aly" resolve="chassis" />
          <ref role="1ZwxE2" node="5$_GT_vwEEa" resolve="setRotation" />
        </node>
        <node concept="19Rifw" id="5$_GT_vy2pL" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="19RgSI" id="5$_GT_vy2pM" role="1UOdpc">
          <property role="TrG5h" value="speed" />
          <node concept="CIVk6" id="5$_GT_vy2pN" role="2C2TGm">
            <node concept="2fgwQN" id="5$_GT_vy2pO" role="UxbcT">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
            <node concept="CIsGf" id="5$_GT_vy2pP" role="CIVlq">
              <node concept="CIsvn" id="5$_GT_vy2pQ" role="CIi4h">
                <ref role="CIi3I" to="g2ww:5zHWU$G$gNn" resolve="rpm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Khz0B" id="1a4kF8yJYxq" role="2RW2fA" />
      <node concept="2EWDwb" id="5zHWU$G_0Yu" role="2RW2fA">
        <property role="TrG5h" value="updateMotors" />
        <node concept="3XIRFW" id="5zHWU$G_0Yv" role="2EWMhI">
          <node concept="3XIRlf" id="5$_GT_vwGFB" role="3XIRFZ">
            <property role="TrG5h" value="halfSpeedDifference" />
            <node concept="CIVk6" id="5$_GT_vwGJr" role="2C2TGm">
              <node concept="2fgwQN" id="5$_GT_vwGJq" role="UxbcT">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
              <node concept="CIsGf" id="5$_GT_vwGJs" role="CIVlq">
                <node concept="CIsvn" id="5$_GT_vwGKj" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                </node>
              </node>
            </node>
            <node concept="2BOcij" id="5$_GT_vwSGz" role="3XIe9u">
              <node concept="1PfFCI" id="5$_GT_vwW8I" role="3TlMhJ">
                <ref role="1Pfwd7" to="g2ww:5zHWU$G$0WZ" resolve="Hz" />
                <ref role="2yhJs8" to="g2ww:5zHWU$G$hNS" resolve="rpm -&gt; rps (any)" />
                <node concept="EbZIE" id="5$_GT_vwUoo" role="1Pfwd1">
                  <ref role="EbZID" node="5zHWU$G_12u" resolve="m_rotation" />
                </node>
              </node>
              <node concept="2BOcij" id="5$_GT_vwPiI" role="3TlMhI">
                <node concept="4ZOvp" id="5$_GT_vwQX$" role="3TlMhJ">
                  <ref role="2DPCA0" node="1a4kF8yJZm6" resolve="PI" />
                </node>
                <node concept="4ZOvp" id="5$_GT_vwPb4" role="3TlMhI">
                  <ref role="2DPCA0" node="5zHWU$G_3Sc" resolve="WHEEL_DISTANCE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3XIRlf" id="5zHWU$G_2su" role="3XIRFZ">
            <property role="TrG5h" value="leftSpeed" />
            <node concept="CIVk6" id="5zHWU$G_77m" role="2C2TGm">
              <node concept="2fgwQN" id="5zHWU$G_77l" role="UxbcT">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
              <node concept="CIsGf" id="5zHWU$G_77n" role="CIVlq">
                <node concept="CIsvn" id="5zHWU$G_7uo" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                </node>
              </node>
            </node>
            <node concept="2BOcil" id="5$_GT_vx4Dw" role="3XIe9u">
              <node concept="3ZVu4v" id="5$_GT_vx6hU" role="3TlMhJ">
                <ref role="3ZVs_2" node="5$_GT_vwGFB" resolve="halfSpeedDifference" />
              </node>
              <node concept="EbZIE" id="5zHWU$G_54r" role="3TlMhI">
                <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
              </node>
            </node>
          </node>
          <node concept="3XIRlf" id="5zHWU$G_fTk" role="3XIRFZ">
            <property role="TrG5h" value="rightSpeed" />
            <node concept="CIVk6" id="5zHWU$G_gqK" role="2C2TGm">
              <node concept="2fgwQN" id="5zHWU$G_gqJ" role="UxbcT">
                <property role="2caQfQ" value="false" />
                <property role="2c7vTL" value="false" />
              </node>
              <node concept="CIsGf" id="5zHWU$G_gqL" role="CIVlq">
                <node concept="CIsvn" id="5zHWU$G_grC" role="CIi4h">
                  <ref role="CIi3I" to="g2ww:5zHWU$G$9bk" resolve="m/s" />
                </node>
              </node>
            </node>
            <node concept="2BOciq" id="5$_GT_vxjMz" role="3XIe9u">
              <node concept="3ZVu4v" id="5$_GT_vxlpm" role="3TlMhJ">
                <ref role="3ZVs_2" node="5$_GT_vwGFB" resolve="halfSpeedDifference" />
              </node>
              <node concept="EbZIE" id="5zHWU$G_guS" role="3TlMhI">
                <ref role="EbZID" node="5zHWU$G_1bI" resolve="m_speed" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5zHWU$G_k0U" role="3XIRFZ">
            <node concept="30IBQI" id="5zHWU$G_n5j" role="1_9egR">
              <ref role="2H6Oet" node="5zHWU$G$bFu" resolve="setSpeed" />
              <node concept="2H6loZ" id="5zHWU$G_k0S" role="1_9fRO">
                <ref role="2H6loY" node="5zHWU$G$akp" resolve="leftWheel" />
              </node>
              <node concept="3ZVu4v" id="5zHWU$G_n5C" role="2H6KYo">
                <ref role="3ZVs_2" node="5zHWU$G_2su" resolve="leftSpeed" />
              </node>
            </node>
          </node>
          <node concept="1_9egQ" id="5zHWU$G_nM6" role="3XIRFZ">
            <node concept="30IBQI" id="5zHWU$G_ovp" role="1_9egR">
              <ref role="2H6Oet" node="5zHWU$G$bFu" resolve="setSpeed" />
              <node concept="2H6loZ" id="5zHWU$G_nM4" role="1_9fRO">
                <ref role="2H6loY" node="5zHWU$G$akU" resolve="rightWheel" />
              </node>
              <node concept="3ZVu4v" id="5zHWU$G_ovI" role="2H6KYo">
                <ref role="3ZVs_2" node="5zHWU$G_fTk" resolve="rightSpeed" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19Rifw" id="5zHWU$G_0Z_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="3Khz0B" id="1a4kF8yJVOn" role="2RW2fA" />
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzTi2" role="N3F5h">
      <property role="TrG5h" value="empty_1436266794715_53" />
    </node>
    <node concept="2NXPZ9" id="5zHWU$Hd9xj" role="N3F5h">
      <property role="TrG5h" value="empty_1436347264952_85" />
    </node>
    <node concept="2NXPZ9" id="5zHWU$GzTlr" role="N3F5h">
      <property role="TrG5h" value="empty_1436266916408_55" />
    </node>
    <node concept="3GEVxB" id="5zHWU$GzTiz" role="2OODSX">
      <ref role="3GEb4d" to="t6m2:5zHWU$GuxGd" resolve="IO" />
    </node>
    <node concept="3GEVxB" id="5zHWU$GzTk5" role="2OODSX">
      <property role="3GEa6x" value="true" />
      <ref role="3GEb4d" to="ec8n:5zHWU$GzMff" resolve="Util" />
    </node>
    <node concept="3GEVxB" id="5zHWU$G$8PU" role="2OODSX">
      <ref role="3GEb4d" to="g2ww:5zHWU$G$0WY" resolve="Units" />
    </node>
    <node concept="3GEVxB" id="7tTb7Ftxglc" role="2OODSX">
      <ref role="3GEb4d" to="lmqm:5$_GT_vvVeM" resolve="PIDController" />
    </node>
  </node>
  <node concept="CIrOI" id="1rMmLdr$RkR">
    <property role="TrG5h" value="MotorUnits" />
    <node concept="CIrOH" id="1rMmLdr$VU1" role="CIrPi">
      <property role="2OOxQR" value="true" />
      <property role="TrG5h" value="segments" />
      <property role="CIruq" value="segments" />
      <node concept="CIsGf" id="1rMmLdr$VU2" role="CIsG9" />
    </node>
  </node>
</model>

