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
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ElementosWeb" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizHasElementosWebbed.ElementosWebbed</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f14a95f1-18d8-4ddc-a899-463623caca02" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad" Name="Entidad" DisplayName="Entidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="6acdec1a-8cdc-4693-bc8e-0bfe30898a90" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad.Color Titulo" Name="colorTitulo" DisplayName="Color Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3d755ed2-09ee-448e-a3dc-fda9e1a5be2d" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad.Tamaño Titulo" Name="tamañoTitulo" DisplayName="Tamaño Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b8b522b4-62aa-4492-9436-50e8237dbc40" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad.Alineacion Titulo" Name="alineacionTitulo" DisplayName="Alineacion Titulo">
          <Type>
            <DomainEnumerationMoniker Name="PosicionTituloEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3c868f2e-3acf-4507-8806-f7a31bdbf27d" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Entidad.Fuente Titulo" Name="fuenteTitulo" DisplayName="Fuente Titulo">
          <Type>
            <DomainEnumerationMoniker Name="FuentesEnum" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="995157d2-720f-4224-9529-acb6d4eac32e" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Atributo" Name="Atributo" DisplayName="Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="AtributoGeneral" />
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
        <DomainClassMoniker Name="AtributoGeneral" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="6cc99eea-e373-4329-badc-f1be1a369ee4" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoRelacion" Name="AtributoRelacion" DisplayName="Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="AtributoGeneral" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="a9823568-0c3a-455e-b811-c0ac13f6e3b6" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal" Name="Portal" DisplayName="Portal" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="ElementosWeb" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="628216c2-ecb6-4cda-aaa7-c57f70e2d9ac" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal.Title Text" Name="titleText" DisplayName="Title Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1fd37aab-c0ff-4912-aae8-ff653018eb22" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal.Title Color" Name="titleColor" DisplayName="Title Color">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="18e507eb-b4a0-48a1-a9e6-1f18174f83e7" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal.Title Font Family" Name="titleFontFamily" DisplayName="Title Font Family">
          <Type>
            <DomainEnumerationMoniker Name="FuentesEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="220806c3-ac91-44c3-b76b-399570876324" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal.Title Font Size" Name="titleFontSize" DisplayName="Title Font Size">
          <Type>
            <ExternalTypeMoniker Name="/System/Int16" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="115d21de-003f-4d86-86fb-6c62c3d618dc" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal.Title Position" Name="titlePosition" DisplayName="Title Position">
          <Type>
            <DomainEnumerationMoniker Name="PosicionTituloEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a3ae277d-25ec-4646-b143-23f37a1604b5" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Portal.Background Color" Name="backgroundColor" DisplayName="Background Color">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="e686a92b-077c-47da-a7c1-cb6ac01747ff" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Page" Name="Page" DisplayName="Page" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="ElementosWeb" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="40740ba6-adce-4992-9e45-a003ad3801cc" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Page.Title Color" Name="titleColor" DisplayName="Title Color">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="76a1d6fd-b66d-456e-b354-e9a328ac44df" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Page.Title Font Family" Name="titleFontFamily" DisplayName="Title Font Family">
          <Type>
            <DomainEnumerationMoniker Name="FuentesEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="acd75d8d-a486-4b70-8de8-0b9436d7ca77" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Page.Title Font Size" Name="titleFontSize" DisplayName="Title Font Size">
          <Type>
            <ExternalTypeMoniker Name="/System/Int16" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0018167a-3fc1-4ede-bcb1-2cefe9a8944a" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Page.Title Position" Name="titlePosition" DisplayName="Title Position">
          <Type>
            <DomainEnumerationMoniker Name="PosicionTituloEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6e5035e0-475b-488c-81dc-74da7d92579d" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Page.Title Text" Name="titleText" DisplayName="Title Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="dd43b97c-e312-4f42-9b5f-66423e074641" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field" Name="Field" DisplayName="Field" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="ElementosWeb" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="6f95a88d-dc30-4796-8beb-2f7085923c8f" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field.Label Color" Name="labelColor" DisplayName="Label Color">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a020fb36-92c4-4814-89be-f7e89d37a57f" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field.Label Font Family" Name="labelFontFamily" DisplayName="Label Font Family">
          <Type>
            <DomainEnumerationMoniker Name="FuentesEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="15097892-eeb1-4cbf-a891-ef5c100a0635" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field.Label Font Size" Name="labelFontSize" DisplayName="Label Font Size">
          <Type>
            <ExternalTypeMoniker Name="/System/Int16" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7748d270-81ef-40b4-a7d6-e970b791ab24" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field.Label Position" Name="labelPosition" DisplayName="Label Position">
          <Type>
            <DomainEnumerationMoniker Name="PosicionTituloEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="72d1a13b-21ed-49c4-90e3-e9fe0621ba3b" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field.Label Text" Name="labelText" DisplayName="Label Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c56d1bf6-6c10-433c-98b1-e177002443c4" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.Field.Label Format" Name="labelFormat" DisplayName="Label Format">
          <Type>
            <DomainEnumerationMoniker Name="VisualizacionEnum" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="3baae1ea-3856-4a6d-8d6b-a84d9312d788" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ElementosWeb" Name="ElementosWeb" DisplayName="Elementos Web" InheritanceModifier="Abstract" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" />
    <DomainClass Id="90f770ac-941c-4bef-b174-d037ff90092c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoGeneral" Name="AtributoGeneral" DisplayName="Atributo General" InheritanceModifier="Abstract" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Elemento" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="35e15f3e-eba2-450f-8cef-66539fde26ba" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoGeneral.Tipo Dato" Name="tipoDato" DisplayName="Tipo Dato">
          <Type>
            <DomainEnumerationMoniker Name="TipoDatoEnum" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="cdb4f741-120e-4e0b-9b0a-3ae164235799" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoGeneral.Es Nulo" Name="esNulo" DisplayName="Es Nulo">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d6a6dab4-ea49-47ec-9c14-fc046434d89c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoGeneral.Admite Repetidos" Name="admiteRepetidos" DisplayName="Admite Repetidos">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dcc4aa23-d156-4490-ba27-cb39b0b27b7e" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.AtributoGeneral.Longitud" Name="longitud" DisplayName="Longitud" DefaultValue="0">
          <Type>
            <ExternalTypeMoniker Name="/System/Int16" />
          </Type>
        </DomainProperty>
      </Properties>
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
        <DomainRole Id="4f9a326e-578b-486e-85e5-421d7582cb11" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion1.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Relacion" Multiplicity="OneMany" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4aca916a-50ce-4b5a-8fac-334ff36acc9c" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.EntidadReferencesRelacion1.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="Entidad" Multiplicity="OneMany" PropertyDisplayName="Entidad">
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
    <DomainRelationship Id="a220121e-0023-4acc-b780-3adf1351a213" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PortalReferencesPaged" Name="PortalReferencesPaged" DisplayName="Portal References Paged" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Source>
        <DomainRole Id="8219b8ea-204c-4dbc-b470-5459cb4d8b38" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PortalReferencesPaged.Portal" Name="Portal" DisplayName="Portal" PropertyName="Paged" Multiplicity="OneMany" PropertyDisplayName="Paged">
          <RolePlayer>
            <DomainClassMoniker Name="Portal" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="eee0fa3d-2ce7-4b5d-9487-9639c508706e" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PortalReferencesPaged.Page" Name="Page" DisplayName="Page" PropertyName="Portal" Multiplicity="One" PropertyDisplayName="Portal">
          <RolePlayer>
            <DomainClassMoniker Name="Page" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="aa479095-ec3a-47dc-976b-ca012860c8c2" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PageReferencesFielded" Name="PageReferencesFielded" DisplayName="Page References Fielded" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
      <Source>
        <DomainRole Id="ddb2e6c6-3517-430a-a318-ed620ce3b544" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PageReferencesFielded.Page" Name="Page" DisplayName="Page" PropertyName="Fielded" Multiplicity="OneMany" PropertyDisplayName="Fielded">
          <RolePlayer>
            <DomainClassMoniker Name="Page" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f1c8fe6d-a100-4d69-beed-8f15277ea753" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PageReferencesFielded.Field" Name="Field" DisplayName="Field" PropertyName="Page" Multiplicity="One" PropertyDisplayName="Page">
          <RolePlayer>
            <DomainClassMoniker Name="Field" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d84a285f-6b12-4ad9-a28a-b546012dbd08" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasElementosWebbed" Name="TapizHasElementosWebbed" DisplayName="Tapiz Has Elementos Webbed" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="5871ed2f-e8b4-4412-8321-dbf789c9164f" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasElementosWebbed.Tapiz" Name="Tapiz" DisplayName="Tapiz" PropertyName="ElementosWebbed" Multiplicity="OneMany" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elementos Webbed">
          <RolePlayer>
            <DomainClassMoniker Name="Tapiz" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b6a2693f-5fbe-4fe8-87ba-2ffad215525d" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TapizHasElementosWebbed.ElementosWeb" Name="ElementosWeb" DisplayName="Elementos Web" PropertyName="Tapiz" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz">
          <RolePlayer>
            <DomainClassMoniker Name="ElementosWeb" />
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
    <DomainEnumeration Name="FuentesEnum" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FuentesEnum">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FuentesEnum.Arial" Name="Arial" Value="0" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FuentesEnum.Verdana" Name="Verdana" Value="1" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FuentesEnum.TimesNewRoman" Name="TimesNewRoman" Value="2" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.FuentesEnum.Tahoma" Name="Tahoma" Value="3" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="PosicionTituloEnum" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PosicionTituloEnum">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PosicionTituloEnum.Izquierda" Name="Izquierda" Value="0" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PosicionTituloEnum.Derecha" Name="Derecha" Value="2" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.PosicionTituloEnum.Centro" Name="Centro" Value="1" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="VisualizacionEnum" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.VisualizacionEnum">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.VisualizacionEnum.areaDeTexto" Name="areaDeTexto" Value="0" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.VisualizacionEnum.checkbox" Name="checkbox" Value="1" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.VisualizacionEnum.radioButton" Name="radioButton" Value="2" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.VisualizacionEnum.listaDesplegable" Name="listaDesplegable" Value="3" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TipoDatoEnum" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TipoDatoEnum">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TipoDatoEnum.Fecha" Name="Fecha" Value="0" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TipoDatoEnum.Real" Name="Real" Value="2" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TipoDatoEnum.Alfanumerico" Name="Alfanumerico" Value="3" />
        <EnumerationLiteral Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.TipoDatoEnum.Entero" Name="Entero" Value="1" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="c00637d8-a0bc-4683-a295-2c6950f9c042" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaEntidad" Name="MetaforaEntidad" DisplayName="Metafora Entidad" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Entidad" FillColor="IndianRed" InitialHeight="1" OutlineThickness="0.06" FillGradientMode="None" Geometry="Circle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Bold" FontSize="15" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="a61f56c9-abc3-4b5e-894e-8cae621a5ffc" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaAtributo" Name="MetaforaAtributo" DisplayName="Metafora Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Atributo" FillColor="LightGreen" OutlineColor="LightGray" InitialWidth="1.1" InitialHeight="0.8" OutlineThickness="0.04" FillGradientMode="None" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="608465d1-8bed-4e21-9966-0f8d67d623f1" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaRelacion" Name="MetaforaRelacion" DisplayName="Metafora Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Relacion" FillColor="HotPink" OutlineColor="MistyRose" InitialWidth="1" InitialHeight="1" OutlineThickness="0.04" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Italic" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="f531bbfd-7821-40b7-92d5-63d849ec4257" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaAtributoKey" Name="MetaforaAtributoKey" DisplayName="Metafora Atributo Key" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Atributo Key" FillColor="Silver" OutlineColor="Chocolate" InitialHeight="1" OutlineThickness="0.05" FillGradientMode="Vertical" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" FontStyle="Bold, Underline" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="d9d59eda-45dd-4c1d-968f-4ebb5728364b" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaAtributoRelacion" Name="MetaforaAtributoRelacion" DisplayName="Metafora Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Atributo Relacion" TextColor="White" FillColor="DarkTurquoise" InitialWidth="1" InitialHeight="1" OutlineThickness="0.04" FillGradientMode="None" Geometry="Circle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="nombreDec" DisplayName="Nombre Dec" DefaultText="nombreDec" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="6e0ab175-799c-4be7-a0fe-1c70626a1830" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaPortal" Name="MetaforaPortal" DisplayName="Metafora Portal" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Portal" FillColor="Orchid" OutlineColor="MediumVioletRed" InitialHeight="1" FillGradientMode="ForwardDiagonal" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="titleTextDec" DisplayName="Title Text Dec" DefaultText="titleTextDec" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="6e9a3b05-2041-4072-8de2-86384baf6e98" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforePage" Name="MetaforePage" DisplayName="Metafore Page" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafore Page" FillColor="RoyalBlue" OutlineColor="LightGray" InitialHeight="1" FillGradientMode="Vertical" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="titleTextDec" DisplayName="Title Text Dec" DefaultText="titleTextDec" FontSize="9" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="3969b08c-5727-495c-bf1e-489f0d07cede" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.MetaforaField" Name="MetaforaField" DisplayName="Metafora Field" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Metafora Field" OutlineColor="Tomato" InitialHeight="1" FillGradientMode="BackwardDiagonal" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="labelTextDec" DisplayName="Label Text Dec" DefaultText="labelTextDec" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="7b518e40-fc7c-4385-8e1b-ca221cb38292" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadAtributo" Name="ConectorEntidadAtributo" DisplayName="Conector Entidad Atributo" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Atributo" DashStyle="Dot" RoutingStyle="Straight" />
    <Connector Id="76d3363b-b780-4156-bb69-0cccd2aa5687" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadRelacion" Name="ConectorEntidadRelacion" DisplayName="Conector Entidad Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Relacion" Color="Gold" DashStyle="DashDotDot" Thickness="0.04125">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0.1" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="cardinalidadDec" DisplayName="Cardinalidad Dec" DefaultText="cardinalidadDec" FontSize="9" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="af824879-0c61-467e-bc1f-400e060654e3" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorEntidadAtributoKey" Name="ConectorEntidadAtributoKey" DisplayName="Conector Entidad Atributo Key" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Entidad Atributo Key" Color="Red" Thickness="0.05" RoutingStyle="Straight" />
    <Connector Id="f8510ae7-75e1-425a-b024-577f1319defd" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorRelacionAtributoRelacion" Name="ConectorRelacionAtributoRelacion" DisplayName="Conector Relacion Atributo Relacion" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Relacion Atributo Relacion" Color="Navy" RoutingStyle="Straight" />
    <Connector Id="99ce57cb-ca6a-4d13-9c25-0e5e72ae584d" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorPortalPage" Name="ConectorPortalPage" DisplayName="Conector Portal Page" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Portal Page" Color="RoyalBlue" Thickness="0.04" RoutingStyle="Straight" />
    <Connector Id="ae631b7a-b206-4e05-9603-0e849b3e0cab" Description="Description for UPM_IPS.FMRMRCMMGProyectoIPS.ConectorPageField" Name="ConectorPageField" DisplayName="Conector Page Field" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS" FixedTooltipText="Conector Page Field" Color="Tomato" Thickness="0.04" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="FMRMRCMMGProyectoIPSSerializationBehavior" Namespace="UPM_IPS.FMRMRCMMGProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="Tapiz" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizMoniker" ElementName="tapiz" MonikerTypeName="TapizMoniker">
        <DomainClassMoniker Name="Tapiz" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="elementoes">
            <DomainRelationshipMoniker Name="TapizHasElementoes" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="elementosWebbed">
            <DomainRelationshipMoniker Name="TapizHasElementosWebbed" />
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
          <XmlPropertyData XmlName="colorTitulo">
            <DomainPropertyMoniker Name="Entidad/colorTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamañoTitulo">
            <DomainPropertyMoniker Name="Entidad/tamañoTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alineacionTitulo">
            <DomainPropertyMoniker Name="Entidad/alineacionTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fuenteTitulo">
            <DomainPropertyMoniker Name="Entidad/fuenteTitulo" />
          </XmlPropertyData>
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
      <XmlClassData TypeName="Portal" MonikerAttributeName="" SerializeId="true" MonikerElementName="portalMoniker" ElementName="portal" MonikerTypeName="PortalMoniker">
        <DomainClassMoniker Name="Portal" />
        <ElementData>
          <XmlPropertyData XmlName="titleText">
            <DomainPropertyMoniker Name="Portal/titleText" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleColor">
            <DomainPropertyMoniker Name="Portal/titleColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleFontFamily">
            <DomainPropertyMoniker Name="Portal/titleFontFamily" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleFontSize">
            <DomainPropertyMoniker Name="Portal/titleFontSize" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="paged">
            <DomainRelationshipMoniker Name="PortalReferencesPaged" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="titlePosition">
            <DomainPropertyMoniker Name="Portal/titlePosition" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="backgroundColor">
            <DomainPropertyMoniker Name="Portal/backgroundColor" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Page" MonikerAttributeName="" SerializeId="true" MonikerElementName="pageMoniker" ElementName="page" MonikerTypeName="PageMoniker">
        <DomainClassMoniker Name="Page" />
        <ElementData>
          <XmlPropertyData XmlName="titleColor">
            <DomainPropertyMoniker Name="Page/titleColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleFontFamily">
            <DomainPropertyMoniker Name="Page/titleFontFamily" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleFontSize">
            <DomainPropertyMoniker Name="Page/titleFontSize" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="fielded">
            <DomainRelationshipMoniker Name="PageReferencesFielded" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="titlePosition">
            <DomainPropertyMoniker Name="Page/titlePosition" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleText">
            <DomainPropertyMoniker Name="Page/titleText" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Field" MonikerAttributeName="" SerializeId="true" MonikerElementName="fieldMoniker" ElementName="field" MonikerTypeName="FieldMoniker">
        <DomainClassMoniker Name="Field" />
        <ElementData>
          <XmlPropertyData XmlName="labelColor">
            <DomainPropertyMoniker Name="Field/labelColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="labelFontFamily">
            <DomainPropertyMoniker Name="Field/labelFontFamily" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="labelFontSize">
            <DomainPropertyMoniker Name="Field/labelFontSize" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="labelPosition">
            <DomainPropertyMoniker Name="Field/labelPosition" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="labelText">
            <DomainPropertyMoniker Name="Field/labelText" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="labelFormat">
            <DomainPropertyMoniker Name="Field/labelFormat" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaPortal" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaPortalMoniker" ElementName="metaforaPortal" MonikerTypeName="MetaforaPortalMoniker">
        <GeometryShapeMoniker Name="MetaforaPortal" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorPortalPage" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorPortalPageMoniker" ElementName="conectorPortalPage" MonikerTypeName="ConectorPortalPageMoniker">
        <ConnectorMoniker Name="ConectorPortalPage" />
      </XmlClassData>
      <XmlClassData TypeName="PortalReferencesPaged" MonikerAttributeName="" SerializeId="true" MonikerElementName="portalReferencesPagedMoniker" ElementName="portalReferencesPaged" MonikerTypeName="PortalReferencesPagedMoniker">
        <DomainRelationshipMoniker Name="PortalReferencesPaged" />
      </XmlClassData>
      <XmlClassData TypeName="PageReferencesFielded" MonikerAttributeName="" SerializeId="true" MonikerElementName="pageReferencesFieldedMoniker" ElementName="pageReferencesFielded" MonikerTypeName="PageReferencesFieldedMoniker">
        <DomainRelationshipMoniker Name="PageReferencesFielded" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforePage" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforePageMoniker" ElementName="metaforePage" MonikerTypeName="MetaforePageMoniker">
        <GeometryShapeMoniker Name="MetaforePage" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorPageField" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorPageFieldMoniker" ElementName="conectorPageField" MonikerTypeName="ConectorPageFieldMoniker">
        <ConnectorMoniker Name="ConectorPageField" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaField" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaFieldMoniker" ElementName="metaforaField" MonikerTypeName="MetaforaFieldMoniker">
        <GeometryShapeMoniker Name="MetaforaField" />
      </XmlClassData>
      <XmlClassData TypeName="ElementosWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="elementosWebMoniker" ElementName="elementosWeb" MonikerTypeName="ElementosWebMoniker">
        <DomainClassMoniker Name="ElementosWeb" />
      </XmlClassData>
      <XmlClassData TypeName="TapizHasElementosWebbed" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizHasElementosWebbedMoniker" ElementName="tapizHasElementosWebbed" MonikerTypeName="TapizHasElementosWebbedMoniker">
        <DomainRelationshipMoniker Name="TapizHasElementosWebbed" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoGeneral" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoGeneralMoniker" ElementName="atributoGeneral" MonikerTypeName="AtributoGeneralMoniker">
        <DomainClassMoniker Name="AtributoGeneral" />
        <ElementData>
          <XmlPropertyData XmlName="tipoDato">
            <DomainPropertyMoniker Name="AtributoGeneral/tipoDato" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="esNulo">
            <DomainPropertyMoniker Name="AtributoGeneral/esNulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="admiteRepetidos">
            <DomainPropertyMoniker Name="AtributoGeneral/admiteRepetidos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="longitud">
            <DomainPropertyMoniker Name="AtributoGeneral/longitud" />
          </XmlPropertyData>
        </ElementData>
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
    <ConnectionBuilder Name="PortalReferencesPagedBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="PortalReferencesPaged" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Portal" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Page" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="PageReferencesFieldedBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="PageReferencesFielded" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Page" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Field" />
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
        <DomainClassMoniker Name="Portal" />
        <ParentElementPath>
          <DomainPath>TapizHasElementosWebbed.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaPortal/titleTextDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Portal/titleText" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaPortal" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Page" />
        <ParentElementPath>
          <DomainPath>TapizHasElementosWebbed.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforePage/titleTextDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Page/titleText" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforePage" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Field" />
        <ParentElementPath>
          <DomainPath>TapizHasElementosWebbed.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaField/labelTextDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Field/labelText" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaField" />
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
      <ShapeMap>
        <DomainClassMoniker Name="AtributoKey" />
        <ParentElementPath>
          <DomainPath>TapizHasElementoes.Tapiz/!Tapiz</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributoKey/nombreDec" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Elemento/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributoKey" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadRelacion" />
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
        <ConnectorMoniker Name="ConectorEntidadAtributo" />
        <DomainRelationshipMoniker Name="EntidadReferencesAtributo" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorRelacionAtributoRelacion" />
        <DomainRelationshipMoniker Name="RelacionReferencesAtributoRelacion" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorEntidadAtributoKey" />
        <DomainRelationshipMoniker Name="EntidadReferencesAtributoKey" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorPortalPage" />
        <DomainRelationshipMoniker Name="PortalReferencesPaged" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorPageField" />
        <DomainRelationshipMoniker Name="PageReferencesFielded" />
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
    <ToolboxTab TabText="Elementos">
      <ElementTool Name="Entidad" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Entidad" Tooltip="Entidad" HelpKeyword="Entidad">
        <DomainClassMoniker Name="Entidad" />
      </ElementTool>
      <ElementTool Name="Atributo" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Atributo" Tooltip="Atributo" HelpKeyword="Atributo">
        <DomainClassMoniker Name="Atributo" />
      </ElementTool>
      <ElementTool Name="AtributoKey" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AtributoKey" Tooltip="Atributo Key" HelpKeyword="AtributoKey">
        <DomainClassMoniker Name="AtributoKey" />
      </ElementTool>
      <ElementTool Name="AtributoRelacion" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AtributoRelacion" Tooltip="Atributo Relacion" HelpKeyword="AtributoRelacion">
        <DomainClassMoniker Name="AtributoRelacion" />
      </ElementTool>
      <ElementTool Name="Relacion" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Relacion" Tooltip="Relacion" HelpKeyword="Relacion">
        <DomainClassMoniker Name="Relacion" />
      </ElementTool>
    </ToolboxTab>
    <ToolboxTab TabText="Conectores">
      <ConnectionTool Name="ConectorEntidadRelacion" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="ConectorEntidadRelacion" Tooltip="Conector Entidad Relacion" HelpKeyword="ConectorEntidadRelacion">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesRelacion1Builder" />
      </ConnectionTool>
      <ConnectionTool Name="ConectorEntidadAtributo" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="ConectorEntidadAtributo" Tooltip="Conector Entidad Atributo" HelpKeyword="ConectorEntidadAtributo">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesAtributoBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="ConectorEntidadAtributoKey" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="ConectorEntidadAtributoKey" Tooltip="Conector Entidad Atributo Key" HelpKeyword="ConectorEntidadAtributoKey">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/EntidadReferencesAtributoKeyBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="ConectorRelacionAtributoRelacion" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="ConectorRelacionAtributoRelacion" Tooltip="Conector Relacion Atributo Relacion" HelpKeyword="ConectorRelacionAtributoRelacion">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/RelacionReferencesAtributoRelacionBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <ToolboxTab TabText="WebElementos">
      <ElementTool Name="Portal" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Portal" Tooltip="Portal" HelpKeyword="Portal">
        <DomainClassMoniker Name="Portal" />
      </ElementTool>
      <ElementTool Name="Page" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Page" Tooltip="Page" HelpKeyword="Page">
        <DomainClassMoniker Name="Page" />
      </ElementTool>
      <ElementTool Name="Field" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Field" Tooltip="Field" HelpKeyword="Field">
        <DomainClassMoniker Name="Field" />
      </ElementTool>
    </ToolboxTab>
    <ToolboxTab TabText="WebConectores">
      <ConnectionTool Name="ConectorPortalPage" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="ConectorPortalPage" Tooltip="Conector Portal Page" HelpKeyword="ConectorPortalPage">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/PortalReferencesPagedBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="ConectorPageField" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="ConectorPageField" Tooltip="Conector Page Field" HelpKeyword="ConectorPageField">
        <ConnectionBuilderMoniker Name="FMRMRCMMGProyectoIPS/PageReferencesFieldedBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="true" UsesSave="true" UsesLoad="false" />
    <DiagramMoniker Name="FMRMRCMMGProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="4cd1a443-c1c0-4294-901b-b489d93f25c6" Title="FMRMRCMMGProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="FMRMRCMMGProyectoIPS/FMRMRCMMGProyectoIPSExplorer" />
  </Explorer>
</Dsl>