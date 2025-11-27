<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="697f02a7-2dd1-43bd-b756-dae8f3e8cbf0" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FMRMRCMMGProyectoIPS" Name="FMRMRCMMGProyectoIPS" DisplayName="FMRMRCMMGProyectoIPS" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" ProductName="FMRMRCMMGProyectoIPS" CompanyName="UPM_IPS" PackageGuid="f82e4fc8-f4fa-4b17-bb52-00e41545370e" PackageNamespace="UPM_IPS.FMRMRCMMGProyectoIPS" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="bf59fb28-24c1-4461-aa40-8b34e2c4744f" Description="The root in which all other elements are embedded. Appears as a diagram." Name="Tapiz" DisplayName="Tapiz" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Elemento" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizHasElementoes.Elementoes</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f14a95f1-18d8-4ddc-a899-463623caca02" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad" Name="Entidad" DisplayName="Entidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="995157d2-720f-4224-9529-acb6d4eac32e" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Atributo" Name="Atributo" DisplayName="Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="f199dab1-e960-43df-a3b8-ad53816ee47a" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Relacion" Name="Relacion" DisplayName="Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="1b205573-ffcc-488e-b12e-a842290c05ef" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Elemento" Name="Elemento" DisplayName="Elemento" InheritanceModifier="Abstract" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="356ffcd9-d00b-496e-a3cb-00fb5ba044e7" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Elemento.Nombre" Name="nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="8c1c5383-bfce-43be-bb1a-90df94270206" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoKey" Name="AtributoKey" DisplayName="Atributo Key" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="6cc99eea-e373-4329-badc-f1be1a369ee4" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoRelacion" Name="AtributoRelacion" DisplayName="Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="e8f7629d-9907-4554-aa2d-f41c46c74c3b" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributo" Name="EntidadReferencesAtributo" DisplayName="Entidad References Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
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
    <DomainRelationship Id="1c746e4a-f643-4439-ac6d-749791b5910c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion1" Name="EntidadReferencesRelacion1" DisplayName="Entidad References Relacion1" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Properties>
        <DomainProperty Id="abdbfea6-a66f-470f-9588-24405e45fa1a" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion1.Cardinalidad" Name="cardinalidad" DisplayName="Cardinalidad">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidad" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="4f9a326e-578b-486e-85e5-421d7582cb11" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion1.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Relacion" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4aca916a-50ce-4b5a-8fac-334ff36acc9c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion1.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="Entidad" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6ce24c72-d856-4db8-969f-a60c4ff2024c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasElementoes" Name="TapizHasElementoes" DisplayName="Tapiz Has Elementoes" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="ccc70b0f-a2ab-437d-80c7-14825ee2b012" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasElementoes.Tapiz" Name="Tapiz" DisplayName="Tapiz" PropertyName="Elementoes" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elementoes">
          <RolePlayer>
            <DomainClassMoniker Name="Tapiz" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="22942794-4c92-48d5-a0fc-c45eb936b2eb" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasElementoes.Elemento" Name="Elemento" DisplayName="Elemento" PropertyName="Tapiz" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz">
          <RolePlayer>
            <DomainClassMoniker Name="Elemento" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="63bc9f85-070a-48ec-a88c-07ba5a44055d" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributoKey" Name="EntidadReferencesAtributoKey" DisplayName="Entidad References Atributo Key" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Source>
        <DomainRole Id="b9415adb-e0f2-4b69-a4d2-6c65bcf453e2" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributoKey.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="AtributoKey" Multiplicity="One" PropertyDisplayName="Atributo Key">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4c1af005-dbd4-4981-a4be-0beb0f0274b1" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesAtributoKey.AtributoKey" Name="AtributoKey" DisplayName="Atributo Key" PropertyName="Entidad" Multiplicity="One" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="AtributoKey" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0be9f4a9-6f40-44cf-8940-a33c96f8efe7" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.RelacionReferencesAtributoRelacion" Name="RelacionReferencesAtributoRelacion" DisplayName="Relacion References Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Source>
        <DomainRole Id="9952615a-a646-4cd9-9a8b-fa8bc02abd20" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.RelacionReferencesAtributoRelacion.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="AtributoRelacion" PropertyDisplayName="Atributo Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6b1ef23a-f126-4297-ae37-4e57239fc1c2" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.RelacionReferencesAtributoRelacion.AtributoRelacion" Name="AtributoRelacion" DisplayName="Atributo Relacion" PropertyName="Relacion" Multiplicity="One" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="AtributoRelacion" />
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
    <GeometryShape Id="608465d1-8bed-4e21-9966-0f8d67d623f1" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaRelacion" Name="MetaforaRelacion" DisplayName="Metafora Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Relacion" FillColor="MediumSlateBlue" OutlineColor="MistyRose" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Italic" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="f531bbfd-7821-40b7-92d5-63d849ec4257" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaAtributoKey" Name="MetaforaAtributoKey" DisplayName="Metafora Atributo Key" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Atributo Key" OutlineColor="Chocolate" InitialHeight="1" OutlineThickness="0.08125" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Bold, Underline" FontSize="9" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="d9d59eda-45dd-4c1d-968f-4ebb5728364b" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaAtributoRelacion" Name="MetaforaAtributoRelacion" DisplayName="Metafora Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Atributo Relacion" TextColor="White" FillColor="DarkTurquoise" InitialHeight="1" FillGradientMode="None" Geometry="Circle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="7b518e40-fc7c-4385-8e1b-ca221cb38292" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadAtributo" Name="ConectorEntidadAtributo" DisplayName="Conector Entidad Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Atributo" DashStyle="Dot" />
    <Connector Id="76d3363b-b780-4156-bb69-0cccd2aa5687" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadRelacion" Name="ConectorEntidadRelacion" DisplayName="Conector Entidad Relacion" InheritanceModifier="Abstract" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Relacion" Color="Gold" DashStyle="DashDotDot" Thickness="0.04125">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="cardinalidadDec" DisplayName="Cardinalidad Dec" DefaultText="cardinalidadDec" FontStyle="Italic, Underline" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="af824879-0c61-467e-bc1f-400e060654e3" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadAtributoKey" Name="ConectorEntidadAtributoKey" DisplayName="Conector Entidad Atributo Key" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Atributo Key" Color="Yellow" Thickness="0.05" />
    <Connector Id="c9103a99-7c6c-46d0-bea6-1e5d2c471a30" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadRelacion1" Name="ConectorEntidadRelacion1" DisplayName="Conector Entidad Relacion1" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Relacion1" Color="Gold" DashStyle="DashDotDot" Thickness="0.04125">
      <BaseConnector>
        <ConnectorMoniker Name="ConectorEntidadRelacion" />
      </BaseConnector>
    </Connector>
    <Connector Id="f8510ae7-75e1-425a-b024-577f1319defd" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorRelacionAtributoRelacion" Name="ConectorRelacionAtributoRelacion" DisplayName="Conector Relacion Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Relacion Atributo Relacion" Color="Navy" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="FMRMRCMMGProyectoIPSSerializationBehavior" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="Tapiz" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizMoniker" ElementName="tapiz" MonikerTypeName="TapizMoniker">
        <DomainClassMoniker Name="Tapiz" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="elementoes">
            <DomainRelationshipMoniker Name="TapizHasElementoes" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FMRMRCMMGProyectoIPSDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="fMRMRCMMGProyectoIPSDiagramMoniker" ElementName="fMRMRCMMGProyectoIPSDiagram" MonikerTypeName="FMRMRCMMGProyectoIPSDiagramMoniker">
        <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Entidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadMoniker" ElementName="entidad" MonikerTypeName="EntidadMoniker">
        <DomainClassMoniker Name="Entidad" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="relacion">
            <DomainRelationshipMoniker Name="EntidadReferencesRelacion1" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributoKey">
            <DomainRelationshipMoniker Name="EntidadReferencesAtributoKey" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaEntidadMoniker" ElementName="metaforaEntidad" MonikerTypeName="MetaforaEntidadMoniker">
        <GeometryShapeMoniker Name="MetaforaEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="Atributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoMoniker" ElementName="atributo" MonikerTypeName="AtributoMoniker">
        <DomainClassMoniker Name="Atributo" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAtributoMoniker" ElementName="metaforaAtributo" MonikerTypeName="MetaforaAtributoMoniker">
        <GeometryShapeMoniker Name="MetaforaAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorEntidadAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorEntidadAtributoMoniker" ElementName="conectorEntidadAtributo" MonikerTypeName="ConectorEntidadAtributoMoniker">
        <ConnectorMoniker Name="ConectorEntidadAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="Relacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="relacionMoniker" ElementName="relacion" MonikerTypeName="RelacionMoniker">
        <DomainClassMoniker Name="Relacion" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributoRelacion">
            <DomainRelationshipMoniker Name="RelacionReferencesAtributoRelacion" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaRelacionMoniker" ElementName="metaforaRelacion" MonikerTypeName="MetaforaRelacionMoniker">
        <GeometryShapeMoniker Name="MetaforaRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferencesAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadReferencesAtributoMoniker" ElementName="entidadReferencesAtributo" MonikerTypeName="EntidadReferencesAtributoMoniker">
        <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferencesRelacion1" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadReferencesRelacion1Moniker" ElementName="entidadReferencesRelacion1" MonikerTypeName="EntidadReferencesRelacion1Moniker">
        <DomainRelationshipMoniker Name="EntidadReferencesRelacion1" />
        <ElementData>
          <XmlPropertyData XmlName="cardinalidad">
            <DomainPropertyMoniker Name="EntidadReferencesRelacion1/cardinalidad" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ConectorEntidadRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorEntidadRelacionMoniker" ElementName="conectorEntidadRelacion" MonikerTypeName="ConectorEntidadRelacionMoniker">
        <ConnectorMoniker Name="ConectorEntidadRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="Elemento" MonikerAttributeName="" SerializeId="true" MonikerElementName="elementoMoniker" ElementName="elemento" MonikerTypeName="ElementoMoniker">
        <DomainClassMoniker Name="Elemento" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Elemento/nombre" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizHasElementoes" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizHasElementoesMoniker" ElementName="tapizHasElementoes" MonikerTypeName="TapizHasElementoesMoniker">
        <DomainRelationshipMoniker Name="TapizHasElementoes" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoKey" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoKeyMoniker" ElementName="atributoKey" MonikerTypeName="AtributoKeyMoniker">
        <DomainClassMoniker Name="AtributoKey" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributoKey" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAtributoKeyMoniker" ElementName="metaforaAtributoKey" MonikerTypeName="MetaforaAtributoKeyMoniker">
        <GeometryShapeMoniker Name="MetaforaAtributoKey" />
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferencesAtributoKey" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadReferencesAtributoKeyMoniker" ElementName="entidadReferencesAtributoKey" MonikerTypeName="EntidadReferencesAtributoKeyMoniker">
        <DomainRelationshipMoniker Name="EntidadReferencesAtributoKey" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorEntidadAtributoKey" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorEntidadAtributoKeyMoniker" ElementName="conectorEntidadAtributoKey" MonikerTypeName="ConectorEntidadAtributoKeyMoniker">
        <ConnectorMoniker Name="ConectorEntidadAtributoKey" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorEntidadRelacion1" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorEntidadRelacion1Moniker" ElementName="conectorEntidadRelacion1" MonikerTypeName="ConectorEntidadRelacion1Moniker">
        <ConnectorMoniker Name="ConectorEntidadRelacion1" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoRelacionMoniker" ElementName="atributoRelacion" MonikerTypeName="AtributoRelacionMoniker">
        <DomainClassMoniker Name="AtributoRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="RelacionReferencesAtributoRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="relacionReferencesAtributoRelacionMoniker" ElementName="relacionReferencesAtributoRelacion" MonikerTypeName="RelacionReferencesAtributoRelacionMoniker">
        <DomainRelationshipMoniker Name="RelacionReferencesAtributoRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributoRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAtributoRelacionMoniker" ElementName="metaforaAtributoRelacion" MonikerTypeName="MetaforaAtributoRelacionMoniker">
        <GeometryShapeMoniker Name="MetaforaAtributoRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorRelacionAtributoRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorRelacionAtributoRelacionMoniker" ElementName="conectorRelacionAtributoRelacion" MonikerTypeName="ConectorRelacionAtributoRelacionMoniker">
        <ConnectorMoniker Name="ConectorRelacionAtributoRelacion" />
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
    <ConnectionBuilder Name="EntidadReferencesRelacion1Builder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EntidadReferencesRelacion1" />
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
    <ConnectionBuilder Name="EntidadReferencesAtributoKeyBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EntidadReferencesAtributoKey" />
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
              <DomainClassMoniker Name="AtributoKey" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="RelacionReferencesAtributoRelacionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="RelacionReferencesAtributoRelacion" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Relacion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AtributoRelacion" />
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
          <DomainPath>TapizHasElementoes.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEntidad/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Elemento/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaEntidad" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Atributo" />
        <ParentElementPath>
          <DomainPath>TapizHasElementoes.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributo/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Elemento/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributo" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Relacion" />
        <ParentElementPath>
          <DomainPath>TapizHasElementoes.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaRelacion/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Elemento/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaRelacion" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AtributoKey" />
        <ParentElementPath>
          <DomainPath>TapizHasElementoes.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="MetaforaAtributoKey" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AtributoRelacion" />
        <ParentElementPath>
          <DomainPath>TapizHasElementoes.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributoRelacion/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Elemento/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributoRelacion" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadAtributo" />
        <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadAtributoKey" />
        <DomainRelationshipMoniker Name="EntidadReferencesAtributoKey" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadRelacion1" />
        <DomainRelationshipMoniker Name="EntidadReferencesRelacion1" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="ConectorEntidadRelacion/cardinalidadDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EntidadReferencesRelacion1/cardinalidad" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorRelacionAtributoRelacion" />
        <DomainRelationshipMoniker Name="RelacionReferencesAtributoRelacion" />
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
      <ElementTool Name="Entidad" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Entidad" Tooltip="Entidad" HelpKeyword="Entidad">
        <DomainClassMoniker Name="Entidad" />
      </ElementTool>
      <ElementTool Name="Atributo" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Atributo" Tooltip="Atributo" HelpKeyword="Atributo">
        <DomainClassMoniker Name="Atributo" />
      </ElementTool>
      <ConnectionTool Name="AtributoEntidadConector" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="AtributoEntidadConector" Tooltip="Atributo Entidad Conector" HelpKeyword="AtributoEntidadConector">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesAtributoBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="EntidadRelacionConector1" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="EntidadRelacionConector1" Tooltip="Entidad Relacion Conector1" HelpKeyword="EntidadRelacionConector1">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesRelacion1Builder" />
      </ConnectionTool>
      <ElementTool Name="Relacion" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Relacion" Tooltip="Relacion" HelpKeyword="Relacion">
        <DomainClassMoniker Name="Relacion" />
      </ElementTool>
      <ConnectionTool Name="EntidadAtributoKeyConector" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="EntidadAtributoKeyConector" Tooltip="Entidad Atributo Key Conector" HelpKeyword="EntidadAtributoKeyConector">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesAtributoKeyBuilder" />
      </ConnectionTool>
      <ElementTool Name="AtributoKey" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AtributoKey" Tooltip="Atributo Key" HelpKeyword="AtributoKey">
        <DomainClassMoniker Name="AtributoKey" />
      </ElementTool>
      <ConnectionTool Name="RelacionAtributoRelacionConector" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="RelacionAtributoRelacionConector" Tooltip="Relacion Atributo Relacion Conector" HelpKeyword="RelacionAtributoRelacionConector">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/RelacionReferencesAtributoRelacionBuilder" />
      </ConnectionTool>
      <ElementTool Name="AtributoRelacion" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AtributoRelacion" Tooltip="Atributo Relacion" HelpKeyword="AtributoRelacion">
        <DomainClassMoniker Name="AtributoRelacion" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="4cd1a443-c1c0-4294-901b-b489d93f25c6" Title="FMRMRCMMGProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="FMRMRCMMGProyectoIPS/FMRMRCMMGProyectoIPSExplorer" />
  </Explorer>
</Dsl>