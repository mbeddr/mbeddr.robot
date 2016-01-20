<?xml version="1.0" encoding="UTF-8"?>
<solution name="com.mbeddr.demo.robot" uuid="f868e329-03f6-49c5-8aa4-dc09954a4393" moduleVersion="0" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">~_PreferencesModule#com.mbeddr.demo.robot.__spreferences.PlatformTemplates(com.mbeddr.demo.robot.__spreferences.PlatformTemplates)</dependency>
    <dependency reexport="false">336a1564-6617-4b5b-84e7-3d25ed4b8c8c(mbeddr.arduino.header)</dependency>
    <dependency reexport="false">3779e7cd-02e4-4dc4-89a1-6e8e31efc854(mbeddr.arduino.platform)</dependency>
    <dependency reexport="false">2ed50273-af07-4e30-9004-b1f89545178a(com.mbeddr.core.stdlib)</dependency>
  </dependencies>
  <usedDevKits>
    <usedDevKit>87468ddd-5b04-4352-a61d-70ff981afab6(com.mbeddr.debugger-testing)</usedDevKit>
    <usedDevKit>8a4402f1-8f1e-44d8-a4f6-f174fa7cf42e(com.mbeddr.cc.reqtrace.c)</usedDevKit>
    <usedDevKit>053020df-6ec1-4889-9f23-34fad076140d(com.mbeddr.commenting)</usedDevKit>
    <usedDevKit>0d9470ba-d59f-4411-a2ce-12f6b6bdec49(com.mbeddr.analyses.fm)</usedDevKit>
    <usedDevKit>0ca77142-1eea-4b14-b369-69bdaa1c44fb(com.mbeddr.analyses.core)</usedDevKit>
    <usedDevKit>1a986be1-0ef0-4f9f-9d8a-81c3ea7227ae(com.mbeddr.physicalunits)</usedDevKit>
    <usedDevKit>315c0ec2-38ff-4e9c-9d15-fd0848b5f062(com.mbeddr.analyses.components)</usedDevKit>
    <usedDevKit>bad61089-aa44-4252-8f72-63f3375f5e64(com.mbeddr.math)</usedDevKit>
    <usedDevKit>43d889ae-8e6a-4f6e-a649-d59342d8728d(com.mbeddr.statemachines)</usedDevKit>
    <usedDevKit>54c79f9f-f3ba-4167-91f1-eb4e98a9c47c(com.mbeddr.documentation)</usedDevKit>
    <usedDevKit>a4dac888-0788-4852-b4c0-f386bf6f2c0b(com.mbeddr.cc.reqtrace)</usedDevKit>
    <usedDevKit>2f7ba914-eed9-41bf-b0ae-6633a04a3894(com.mbeddr.statemachinesInComponents)</usedDevKit>
    <usedDevKit>b31efd26-898e-4b0e-b5dc-2d7ced06e7f7(com.mbeddr.cc.variability)</usedDevKit>
    <usedDevKit>74a1428c-a8b1-49f6-8abb-f4008cf591e6(com.mbeddr.analyses.statemachines)</usedDevKit>
    <usedDevKit>aa72fbcf-7e79-465b-a4d9-4517ef4624ee(com.mbeddr.concurrency)</usedDevKit>
  </usedDevKits>
  <languageVersions>
    <language id="e865cad2-7cc8-437a-951a-665bcbcb8b1a" fqName="com.mbeddr.cc.requirements" version="0" />
    <language id="983e02f8-8062-426e-b60d-bc044a46b93a" fqName="com.mbeddr.cc.requirements.report" version="0" />
    <language id="d6714220-402d-48cb-a4a2-88223c6257f6" fqName="com.mbeddr.cc.requirements.scenarios" version="0" />
    <language id="e530d4cb-efad-4822-92f8-1d114f03f836" fqName="com.mbeddr.cc.requirements.wp" version="0" />
    <language id="53bab999-e9c3-428a-80be-fef5bed08f55" fqName="com.mbeddr.cc.trace" version="0" />
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" fqName="com.mbeddr.core.base" version="2" />
    <language id="2d7fadf5-33f6-4e80-a78f-0f739add2bde" fqName="com.mbeddr.core.buildconfig" version="0" />
    <language id="b2da2e1a-b542-47f5-9be0-4dc21efe74a4" fqName="com.mbeddr.core.checks" version="0" />
    <language id="390de4af-0c8d-4716-8dec-3d05ca751b28" fqName="com.mbeddr.core.cinterpreter" version="0" />
    <language id="223dd778-c44f-4ef3-9535-7aa7d12244a6" fqName="com.mbeddr.core.debug" version="0" />
    <language id="ebb5e132-d298-4649-b320-b3f4d7f3acff" fqName="com.mbeddr.core.debug.blext" version="0" />
    <language id="783af01f-87a7-412c-be99-293a162652b5" fqName="com.mbeddr.core.embedded" version="0" />
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" fqName="com.mbeddr.core.expressions" version="2" />
    <language id="ad5e9db1-9600-47c7-86ef-614165b281b8" fqName="com.mbeddr.core.legacy" version="0" />
    <language id="f93d1dbe-bfd1-42dd-932a-f375fa6f5373" fqName="com.mbeddr.core.make" version="1" />
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" fqName="com.mbeddr.core.modules" version="0" />
    <language id="62296a07-bc38-46d2-8034-198c24063588" fqName="com.mbeddr.core.modules.gen" version="0" />
    <language id="3bf5377a-e904-4ded-9754-5a516023bfaa" fqName="com.mbeddr.core.pointers" version="0" />
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" fqName="com.mbeddr.core.statements" version="1" />
    <language id="efda956e-491e-4f00-ba14-36af2f213ecf" fqName="com.mbeddr.core.udt" version="1" />
    <language id="06d68b77-b699-4918-83b8-857e63787800" fqName="com.mbeddr.core.unittest" version="1" />
    <language id="2693fc71-9b0e-4b05-ab13-f57227d675f2" fqName="com.mbeddr.core.util" version="0" />
    <language id="2374bc90-7e37-41f1-a9c4-c2e35194c36a" fqName="com.mbeddr.doc" version="0" />
    <language id="f44f6b9a-bf30-4f73-866e-fac17c177409" fqName="com.mbeddr.doc.gen_latex" version="0" />
    <language id="2dec0852-3a21-4c4e-a68c-b05236cc37f2" fqName="com.mbeddr.doc.gen_xhtml" version="0" />
    <language id="f8f68d92-c6d2-44b3-8d63-c00ade75ec86" fqName="com.mbeddr.doc.latex" version="0" />
    <language id="e06345c7-da82-4f8b-bd44-1425fe158640" fqName="com.mbeddr.doc.meta" version="0" />
    <language id="97d24244-51db-4e2e-97fc-7bd73b1f5f40" fqName="com.mbeddr.ext.components" version="0" />
    <language id="3f445ef3-54ad-4ae5-a22d-91c3ce06375e" fqName="com.mbeddr.ext.components.concurrency" version="0" />
    <language id="028899e1-bfee-4db6-b470-ed0f9ee5f662" fqName="com.mbeddr.ext.components.embedded" version="0" />
    <language id="bd640b8f-4be4-42b6-8dc0-2c94d1ddf606" fqName="com.mbeddr.ext.components.gen_nomw" version="0" />
    <language id="36a565f1-3fa0-42d6-baac-f87e209c9789" fqName="com.mbeddr.ext.components.mock" version="0" />
    <language id="13a36f90-83c5-4bf6-9dd6-70e455f1ef36" fqName="com.mbeddr.ext.components.statemachine" version="0" />
    <language id="41911c23-eb23-4ee6-872f-bc7f7ebce290" fqName="com.mbeddr.ext.components.test" version="0" />
    <language id="e3420481-604b-464e-bc1b-06ecfc1f9dfc" fqName="com.mbeddr.ext.components.units" version="0" />
    <language id="54f2a59b-97bb-4c09-af92-928ebf9c5966" fqName="com.mbeddr.ext.compositecomponents" version="0" />
    <language id="b879012d-402b-40e0-8df7-e6fa93b9b711" fqName="com.mbeddr.ext.concurrency" version="0" />
    <language id="d6943f81-8340-4661-9d57-8fc1e2d23b36" fqName="com.mbeddr.ext.concurrency.plainC" version="0" />
    <language id="8c1a7e14-9520-42a4-a3a7-b15e523af156" fqName="com.mbeddr.ext.concurrency.pthreads" version="0" />
    <language id="564e97d6-8fb7-41f5-bfc1-c7ed376efd62" fqName="com.mbeddr.ext.statemachines" version="0" />
    <language id="0d04a6cc-773e-4069-b9b0-11884b2ff1c8" fqName="com.mbeddr.ext.units" version="1" />
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" fqName="com.mbeddr.mpsutil.blutil" version="1" />
    <language id="a482b416-d0c9-473f-8f67-725ed642b3f3" fqName="com.mbeddr.mpsutil.breadcrumb" version="0" />
    <language id="ca9e3cd7-a4a7-4d94-943e-79c063754879" fqName="com.mbeddr.mpsutil.favourites" version="0" />
    <language id="1c897ba5-9d43-4035-ac7f-0306495743ac" fqName="com.mbeddr.mpsutil.interpreter.test" version="0" />
    <language id="d09a16fb-1d68-4a92-a5a4-20b4b2f86a62" fqName="com.mbeddr.mpsutil.jung" version="0" />
    <language id="92f195b6-a209-4804-ad65-f5248ecd5873" fqName="com.mbeddr.mpsutil.margincell" version="0" />
    <language id="b4d28e19-7d2d-47e9-943e-3a41f97a0e52" fqName="com.mbeddr.mpsutil.plantuml.node" version="0" />
    <language id="c788b046-2019-4656-8b60-8bb9bbb177b5" fqName="com.mbeddr.mpsutil.review" version="0" />
    <language id="7a060fae-09e0-4372-be36-6696d6554c0e" fqName="com.mbeddr.mpsutil.review.annotation" version="0" />
    <language id="c1c2a88a-323c-4605-a37d-9ab77a2ccbd2" fqName="com.mbeddr.mpsutil.suppresswarning" version="0" />
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" fqName="de.itemis.mps.editor.diagram.layout" version="0" />
    <language id="92d2ea16-5a42-4fdf-a676-c7604efe3504" fqName="de.slisson.mps.richtext" version="0" />
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="4" />
    <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <language id="fd392034-7849-419d-9071-12563d152375" fqName="jetbrains.mps.baseLanguage.closures" version="0" />
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" fqName="jetbrains.mps.baseLanguage.collections" version="0" />
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" fqName="jetbrains.mps.baseLanguage.logging" version="0" />
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" fqName="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" fqName="jetbrains.mps.core.xml" version="0" />
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" fqName="jetbrains.mps.lang.access" version="0" />
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" fqName="jetbrains.mps.lang.behavior" version="0" />
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
    <language id="86ef8290-12bb-4ca7-947f-093788f263a9" fqName="jetbrains.mps.lang.project" version="0" />
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" fqName="jetbrains.mps.lang.smodel" version="2" />
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" fqName="jetbrains.mps.lang.structure" version="1" />
    <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" fqName="jetbrains.mps.lang.typesystem" version="0" />
    <language id="3c4c8461-a533-4459-916a-dc0176793b4c" fqName="mbeddr.arduino.core" version="0" />
    <language id="e562f51e-6403-4857-b773-44632077c67d" fqName="mbeddr.arduino.interrupts" version="0" />
    <language id="3828799d-97c8-48d0-af8b-39b903457e1e" fqName="mbeddr.arduino.registers" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="13c63209-1eb7-491d-accf-3ba493379657(com.mbeddr.analyses.cbmc.components.pluginSolution)" version="0" />
    <module reference="603a3466-f1f4-442a-b544-048f481ec3bb(com.mbeddr.analyses.cbmc.components.rt)" version="0" />
    <module reference="fbe54499-edb8-4097-b473-699993bd8a01(com.mbeddr.analyses.cbmc.core.pluginSolution)" version="0" />
    <module reference="9506d0a9-4e49-4605-b51a-d3aeb0070ba3(com.mbeddr.analyses.cbmc.core.rt)" version="0" />
    <module reference="397da8bd-bcff-4d80-87cb-c4eaba8e2cb2(com.mbeddr.analyses.cbmc.pluginSolution)" version="0" />
    <module reference="a3733d9d-fa94-4706-bdd4-596b968eba8e(com.mbeddr.analyses.cbmc.rt)" version="0" />
    <module reference="93df2f50-c615-4300-ad92-915871dcae02(com.mbeddr.analyses.cbmc.statemachines.pluginSolution)" version="0" />
    <module reference="0a31509b-f803-4558-b840-db9f6dc14b2f(com.mbeddr.analyses.cbmc.statemachines.rt)" version="0" />
    <module reference="d280cd6b-3d77-4bf2-b70d-fe049ab4c77e(com.mbeddr.analyses.sat4j)" version="0" />
    <module reference="c34744c1-dc64-4da4-9850-885dee7d4a0c(com.mbeddr.analyses.sat4j.fm)" version="0" />
    <module reference="a71037fe-a093-42d0-8f70-3a899fe590db(com.mbeddr.analyses.sat4j.fm.pluginSolution)" version="0" />
    <module reference="4c16cb42-7fa3-47c7-89c7-1c479c287588(com.mbeddr.analyses.utils)" version="0" />
    <module reference="2ed50273-af07-4e30-9004-b1f89545178a(com.mbeddr.core.stdlib)" version="0" />
    <module reference="f868e329-03f6-49c5-8aa4-dc09954a4393(com.mbeddr.demo.robot)" version="0" />
    <module reference="~_PreferencesModule#com.mbeddr.demo.robot.__spreferences.PlatformTemplates(com.mbeddr.demo.robot.__spreferences.PlatformTemplates)" version="0" />
    <module reference="cc7da2f6-419f-4133-a811-31fcd3295a85(jetbrains.mps.debugger.api.api)" version="0" />
    <module reference="336a1564-6617-4b5b-84e7-3d25ed4b8c8c(mbeddr.arduino.header)" version="0" />
    <module reference="3779e7cd-02e4-4dc4-89a1-6e8e31efc854(mbeddr.arduino.platform)" version="0" />
  </dependencyVersions>
</solution>

