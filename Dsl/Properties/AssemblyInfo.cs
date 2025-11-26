#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"UPM_IPS")]
[assembly: AssemblyProduct(@"FMRMRCMMGProyectoIPS")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"UPM_IPS.FMRMRCMMGProyectoIPS.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100B582D00A482ECB9DC85495C7BD7B59405F043239565CE6D4886730C3222E889A8757E9166799FCF0BFF7D4B2B73E32EF9F1EC5A30F31B0AFEAA1160A22A807A3665420440FF2F018CAC55C065246E418DC6384EB951879A9F75A16E594C47D848F13B8776EE34B1956473E150BD048A1C84D07AF8470418B90F9EC946337A1B0")]