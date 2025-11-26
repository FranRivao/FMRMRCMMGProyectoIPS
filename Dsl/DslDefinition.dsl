<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="697f02a7-2dd1-43bd-b756-dae8f3e8cbf0" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FMRMRCMMGProyectoIPS" Name="FMRMRCMMGProyectoIPS" DisplayName="FMRMRCMMGProyectoIPS" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" ProductName="FMRMRCMMGProyectoIPS" CompanyName="UPM_IPS" PackageGuid="f82e4fc8-f4fa-4b17-bb52-00e41545370e" PackageNamespace="UPM_IPS.FMRMRCMMGProyectoIPS" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="bf59fb28-24c1-4461-aa40-8b34e2c4744f" Description="The root in which all other elements are embedded. Appears as a diagram." Name="Tapiz" DisplayName="Tapiz" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Entidad" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizHasEntidad.Entidad</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Atributo" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizHasAtributo.Atributo</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Relacion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizHasRelacion.Relacion</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f14a95f1-18d8-4ddc-a899-463623caca02" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad" Name="Entidad" DisplayName="Entidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="9590b44a-0dc3-4252-b5b7-7ac46f1b2fa8" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad.Nombre" Name="nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="995157d2-720f-4224-9529-acb6d4eac32e" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Atributo" Name="Atributo" DisplayName="Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="569fb682-90bb-4a1a-a85a-daeffcfeabe0" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Atributo.Nombre" Name="nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="f199dab1-e960-43df-a3b8-ad53816ee47a" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Relacion" Name="Relacion" DisplayName="Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="ed1ae1f2-570f-495a-a650-6407285eb105" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Relacion.Nombre" Name="nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="5e41c215-c6c7-4e55-bfd4-1bda1ff839af" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasEntidad" Name="TapizHasEntidad" DisplayName="Tapiz Has Entidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="a0f6320e-4f4a-4b43-a6c6-4688a8dec4b2" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasEntidad.Tapiz" Name="Tapiz" DisplayName="Tapiz" PropertyName="Entidad" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="Tapiz" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f011a26d-000c-4b05-be83-5b79c0d629cf" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasEntidad.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Tapiz" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="18f8c16e-768b-4375-8153-1f3d446f70a6" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasAtributo" Name="TapizHasAtributo" DisplayName="Tapiz Has Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="59e21b10-b584-46cd-a6ba-3e6497a79324" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasAtributo.Tapiz" Name="Tapiz" DisplayName="Tapiz" PropertyName="Atributo" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="Tapiz" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ffc48bc8-ba3d-4c99-9e24-f85b558996af" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasAtributo.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="Tapiz" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="01c4fbee-7ffb-4940-97d0-482a3a601e38" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasRelacion" Name="TapizHasRelacion" DisplayName="Tapiz Has Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="c1bf1103-84a2-479f-9a24-a1fca0e39330" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasRelacion.Tapiz" Name="Tapiz" DisplayName="Tapiz" PropertyName="Relacion" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Tapiz" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d9919e3d-444e-4cce-ad52-5f4251e2de0f" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasRelacion.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="Tapiz" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e8f7629d-9907-4554-aa2d-f41c46c74c3b" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributo" Name="EntidadReferencesAtributo" DisplayName="Entidad References Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="334b4c9a-3079-405f-aec6-1646bd90a7f5" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributo.Cardinalidad Origen" Name="cardinalidadOrigen" DisplayName="Cardinalidad Origen">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="87b5ae37-1a19-4772-a87e-75884f8548fb" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributo.Cardinalidad Fin" Name="cardinalidadFin" DisplayName="Cardinalidad Fin">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="7ff23918-9cd6-443e-8612-05240d3d51da" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributo.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Atributo" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="925fe10c-3866-4d69-95ca-cd4a0dc9d7e7" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributo.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="Entidad" Multiplicity="One" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="1c746e4a-f643-4439-ac6d-749791b5910c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion" Name="EntidadReferencesRelacion" DisplayName="Entidad References Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="da72d8fb-802b-4583-bdea-ffa22c2cbf80" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion.Cardinalidad Origen" Name="cardinalidadOrigen" DisplayName="Cardinalidad Origen">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6da12f1d-7316-49cf-82de-cfdf25ac1702" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion.Cardinalidad Fin" Name="cardinalidadFin" DisplayName="Cardinalidad Fin">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="4f9a326e-578b-486e-85e5-421d7582cb11" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Relacion" Multiplicity="One" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4aca916a-50ce-4b5a-8fac-334ff36acc9c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="Entidad" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
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
    <DomainEnumeration Name="Cardinalidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Cardinalidad">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Cardinalidad.ceroAuno" Name="ceroAuno" Value="1" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Cardinalidad.ceroAn" Name="ceroAn" Value="0" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Cardinalidad.unoAn" Name="unoAn" Value="2" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Cardinalidad.unoAuno" Name="unoAuno" Value="3" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="c00637d8-a0bc-4683-a295-2c6950f9c042" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaEntidad" Name="MetaforaEntidad" DisplayName="Metafora Entidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Entidad" FillColor="IndianRed" InitialHeight="1" OutlineThickness="0.07" FillGradientMode="None" Geometry="Circle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Bold, Italic" FontSize="12" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="a61f56c9-abc3-4b5e-894e-8cae621a5ffc" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaAtributo" Name="MetaforaAtributo" DisplayName="Metafora Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Atributo" FillColor="LightGreen" OutlineColor="LightGray" InitialWidth="1.3" InitialHeight="0.8" OutlineThickness="0.04" FillGradientMode="None" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="608465d1-8bed-4e21-9966-0f8d67d623f1" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaRelacion" Name="MetaforaRelacion" DisplayName="Metafora Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Relacion" TextColor="LightGray" FillColor="MediumSlateBlue" OutlineColor="MistyRose" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Italic" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="7b518e40-fc7c-4385-8e1b-ca221cb38292" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadAtributo" Name="ConectorEntidadAtributo" DisplayName="Conector Entidad Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Atributo" DashStyle="Dot">
      <BaseConnector>
        <ConnectorMoniker Name="Conector" />
      </BaseConnector>
    </Connector>
    <Connector Id="35bc87d9-758a-40bf-abac-1057f77065f7" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Conector" Name="Conector" DisplayName="Conector" InheritanceModifier="Abstract" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector" Color="Gold" DashStyle="DashDotDot" Thickness="0.04125">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="cardinalidadOrigenDec" DisplayName="Cardinalidad Origen Dec" DefaultText="cardinalidadOrigenDec" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="cardinalidadFinDec" DisplayName="Cardinalidad Fin Dec" DefaultText="cardinalidadFinDec" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="76d3363b-b780-4156-bb69-0cccd2aa5687" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadRelacion" Name="ConectorEntidadRelacion" DisplayName="Conector Entidad Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Relacion" Color="Gold" DashStyle="DashDotDot" Thickness="0.04125">
      <BaseConnector>
        <ConnectorMoniker Name="Conector" />
      </BaseConnector>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="FMRMRCMMGProyectoIPSSerializationBehavior" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="Tapiz" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizMoniker" ElementName="tapiz" MonikerTypeName="TapizMoniker">
        <DomainClassMoniker Name="Tapiz" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="entidad">
            <DomainRelationshipMoniker Name="TapizHasEntidad" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="TapizHasAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="relacion">
            <DomainRelationshipMoniker Name="TapizHasRelacion" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FMRMRCMMGProyectoIPSDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="fMRMRCMMGProyectoIPSDiagramMoniker" ElementName="fMRMRCMMGProyectoIPSDiagram" MonikerTypeName="FMRMRCMMGProyectoIPSDiagramMoniker">
        <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Entidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadMoniker" ElementName="entidad" MonikerTypeName="EntidadMoniker">
        <DomainClassMoniker Name="Entidad" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Entidad/nombre" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="relacion">
            <DomainRelationshipMoniker Name="EntidadReferencesRelacion" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizHasEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizHasEntidadMoniker" ElementName="tapizHasEntidad" MonikerTypeName="TapizHasEntidadMoniker">
        <DomainRelationshipMoniker Name="TapizHasEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaEntidadMoniker" ElementName="metaforaEntidad" MonikerTypeName="MetaforaEntidadMoniker">
        <GeometryShapeMoniker Name="MetaforaEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="Atributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoMoniker" ElementName="atributo" MonikerTypeName="AtributoMoniker">
        <DomainClassMoniker Name="Atributo" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Atributo/nombre" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAtributoMoniker" ElementName="metaforaAtributo" MonikerTypeName="MetaforaAtributoMoniker">
        <GeometryShapeMoniker Name="MetaforaAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="TapizHasAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizHasAtributoMoniker" ElementName="tapizHasAtributo" MonikerTypeName="TapizHasAtributoMoniker">
        <DomainRelationshipMoniker Name="TapizHasAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorEntidadAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorEntidadAtributoMoniker" ElementName="conectorEntidadAtributo" MonikerTypeName="ConectorEntidadAtributoMoniker">
        <ConnectorMoniker Name="ConectorEntidadAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="Relacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="relacionMoniker" ElementName="relacion" MonikerTypeName="RelacionMoniker">
        <DomainClassMoniker Name="Relacion" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Relacion/nombre" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizHasRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizHasRelacionMoniker" ElementName="tapizHasRelacion" MonikerTypeName="TapizHasRelacionMoniker">
        <DomainRelationshipMoniker Name="TapizHasRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaRelacionMoniker" ElementName="metaforaRelacion" MonikerTypeName="MetaforaRelacionMoniker">
        <GeometryShapeMoniker Name="MetaforaRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferencesAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadReferencesAtributoMoniker" ElementName="entidadReferencesAtributo" MonikerTypeName="EntidadReferencesAtributoMoniker">
        <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
        <ElementData>
          <XmlPropertyData XmlName="cardinalidadOrigen">
            <DomainPropertyMoniker Name="EntidadReferencesAtributo/cardinalidadOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadFin">
            <DomainPropertyMoniker Name="EntidadReferencesAtributo/cardinalidadFin" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferencesRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadReferencesRelacionMoniker" ElementName="entidadReferencesRelacion" MonikerTypeName="EntidadReferencesRelacionMoniker">
        <DomainRelationshipMoniker Name="EntidadReferencesRelacion" />
        <ElementData>
          <XmlPropertyData XmlName="cardinalidadOrigen">
            <DomainPropertyMoniker Name="EntidadReferencesRelacion/cardinalidadOrigen" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadFin">
            <DomainPropertyMoniker Name="EntidadReferencesRelacion/cardinalidadFin" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Conector" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorMoniker" ElementName="conector" MonikerTypeName="ConectorMoniker">
        <ConnectorMoniker Name="Conector" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorEntidadRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorEntidadRelacionMoniker" ElementName="conectorEntidadRelacion" MonikerTypeName="ConectorEntidadRelacionMoniker">
        <ConnectorMoniker Name="ConectorEntidadRelacion" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="FMRMRCMMGProyectoIPSExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="EntidadReferencesAtributoBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Entidad" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Atributo" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="EntidadReferencesRelacionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EntidadReferencesRelacion" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Entidad" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Relacion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="6334ec28-538a-4e1e-8820-1f382fdd2450" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FMRMRCMMGProyectoIPSDiagram" Name="FMRMRCMMGProyectoIPSDiagram" DisplayName="Minimal Language Diagram" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
    <Class>
      <DomainClassMoniker Name="Tapiz" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Entidad" />
        <ParentElementPath>
          <DomainPath>TapizHasEntidad.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEntidad/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Entidad/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaEntidad" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Atributo" />
        <ParentElementPath>
          <DomainPath>TapizHasAtributo.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributo/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributo" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Relacion" />
        <ParentElementPath>
          <DomainPath>TapizHasRelacion.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaRelacion/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Relacion/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaRelacion" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadAtributo" />
        <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="Conector/cardinalidadFinDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EntidadReferencesAtributo/cardinalidadFin" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="Conector/cardinalidadOrigenDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EntidadReferencesAtributo/cardinalidadOrigen" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadRelacion" />
        <DomainRelationshipMoniker Name="EntidadReferencesRelacion" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="Conector/cardinalidadFinDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EntidadReferencesRelacion/cardinalidadFin" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="Conector/cardinalidadOrigenDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EntidadReferencesRelacion/cardinalidadOrigen" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="FMRMRCMMG_DSLProyIPS" EditorGuid="0ec12e17-df7d-42e8-a88d-0216e8f14f09">
    <RootClass>
      <DomainClassMoniker Name="Tapiz" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="FMRMRCMMGProyectoIPSSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="FMRMRCMMGProyectoIPS">
      <ElementTool Name="Entidad" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Entidad" Tooltip="Entidad" HelpKeyword="Entidad">
        <DomainClassMoniker Name="Entidad" />
      </ElementTool>
      <ElementTool Name="Atributo" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Atributo" Tooltip="Atributo" HelpKeyword="Atributo">
        <DomainClassMoniker Name="Atributo" />
      </ElementTool>
      <ConnectionTool Name="AtributoEntidadConector" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="AtributoEntidadConector" Tooltip="Atributo Entidad Conector" HelpKeyword="AtributoEntidadConector">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesAtributoBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="EntidadRelacionConector" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="EntidadRelacionConector" Tooltip="Entidad Relacion Conector" HelpKeyword="EntidadRelacionConector">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesRelacionBuilder" />
      </ConnectionTool>
      <ElementTool Name="Relacion" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Relacion" Tooltip="Relacion" HelpKeyword="Relacion">
        <DomainClassMoniker Name="Relacion" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="4cd1a443-c1c0-4294-901b-b489d93f25c6" Title="FMRMRCMMGProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="FMRMRCMMGProyectoIPS/FMRMRCMMGProyectoIPSExplorer" />
  </Explorer>
</Dsl>