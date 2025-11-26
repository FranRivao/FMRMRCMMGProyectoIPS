<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="697f02a7-2dd1-43bd-b756-dae8f3e8cbf0" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FMRMRCMMGProyectoIPS" Name="FMRMRCMMGProyectoIPS" DisplayName="FMRMRCMMGProyectoIPS" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" ProductName="FMRMRCMMGProyectoIPS" CompanyName="UPM_IPS" PackageGuid="f82e4fc8-f4fa-4b17-bb52-00e41545370e" PackageNamespace="UPM_IPS.FMRMRCMMGProyectoIPS" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="bf59fb28-24c1-4461-aa40-8b34e2c4744f" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="ExampleElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="2eb10126-198c-4456-916c-cb6de581e9a4" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="ExampleElement" DisplayName="Example Element" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="7bcf587f-3d39-4921-b135-b0ab57bab26e" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ExampleElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="80ead10d-344f-4f97-8cb0-b923fd720062" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="6c60672e-72c2-4b50-b42d-cc59abbe588b" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="2cbf2e0a-22dd-4b87-86c1-f637d68c97e2" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9b8dc137-3a4d-443c-a18b-5e36e4edb57b" Description="Reference relationship between Elements." Name="ExampleElementReferencesTargets" DisplayName="Example Element References Targets" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Source>
        <DomainRole Id="164922fa-b79c-4b90-a166-835c23697712" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f848e7e3-5d95-4aa2-8391-9a31fadce0d1" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="2a1550a7-b2a3-4655-a2b7-990045b25216" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="21797aa5-8f57-4cb9-9229-4cd50ed2ed14" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="FMRMRCMMGProyectoIPSSerializationBehavior" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleElement" MonikerAttributeName="name" SerializeId="true" MonikerElementName="exampleElementMoniker" ElementName="exampleElement" MonikerTypeName="ExampleElementMoniker">
        <DomainClassMoniker Name="ExampleElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="ExampleElement/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleElementReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleElementReferencesTargetsMoniker" ElementName="exampleElementReferencesTargets" MonikerTypeName="ExampleElementReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FMRMRCMMGProyectoIPSDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="fMRMRCMMGProyectoIPSDiagramMoniker" ElementName="fMRMRCMMGProyectoIPSDiagram" MonikerTypeName="FMRMRCMMGProyectoIPSDiagramMoniker">
        <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="FMRMRCMMGProyectoIPSExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ExampleElementReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ExampleElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ExampleElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="6334ec28-538a-4e1e-8820-1f382fdd2450" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FMRMRCMMGProyectoIPSDiagram" Name="FMRMRCMMGProyectoIPSDiagram" DisplayName="Minimal Language Diagram" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="ExampleElement" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="FMRMRCMMG_DSLProyIPS" EditorGuid="0ec12e17-df7d-42e8-a88d-0216e8f14f09">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="FMRMRCMMGProyectoIPSSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="FMRMRCMMGProyectoIPS">
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ExampleElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="ExampleElement" />
      </ElementTool>
      <ConnectionTool Name="ExampleRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="ExampleRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/ExampleElementReferencesTargetsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="4cd1a443-c1c0-4294-901b-b489d93f25c6" Title="FMRMRCMMGProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="FMRMRCMMGProyectoIPS/FMRMRCMMGProyectoIPSExplorer" />
  </Explorer>
</Dsl>