(*****************************************)
(*      This file is autogenerated       *)
(*   Any manual changes will be LOST!    *)
(*****************************************)
(* Generated 2002-04-05 15:23:10         *)
(*****************************************)
(* This file should be stored in the     *)
(* same directory as the form/datamodule *)
(* with the corresponding model          *)
(*****************************************)
(* Copyright notice:                     *)
(*                                       *)
(*****************************************)

unit AssociationClassExampleClasses;

{$DEFINE AssociationClassExampleClasses_unitheader}
{$INCLUDE AssociationClassExampleClasses_Interface.inc}

uses
  // implementation uses
  // implementation dependencies
  // other
  BoldGeneratedCodeDictionary;

{ Includefile for methodimplementations }

{$INCLUDE AssociationClassExampleClasses.inc}

const
  BoldMemberAssertInvalidObjectType: string = 'Object of singlelink (%s.%s) is of wrong type (is %s, should be %s)';

{ TBusinessClassesRoot }

procedure TBusinessClassesRootList.Add(NewObject: TBusinessClassesRoot);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TBusinessClassesRootList.IndexOf(anObject: TBusinessClassesRoot): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TBusinessClassesRootList.Includes(anObject: TBusinessClassesRoot) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TBusinessClassesRootList.AddNew: TBusinessClassesRoot;
begin
  result := TBusinessClassesRoot(InternalAddNew);
end;

procedure TBusinessClassesRootList.Insert(index: Integer; NewObject: TBusinessClassesRoot);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TBusinessClassesRootList.GetBoldObject(index: Integer): TBusinessClassesRoot;
begin
  result := TBusinessClassesRoot(GetElement(index));
end;

procedure TBusinessClassesRootList.SetBoldObject(index: Integer; NewObject: TBusinessClassesRoot);
begin;
  SetElement(index, NewObject);
end;

{ TCompany }

function TCompany._Get_M_name: TBAString;
begin
  assert(ValidateMember('TCompany', 'name', 0, TBAString));
  Result := TBAString(BoldMembers[0]);
end;

function TCompany._Getname: String;
begin
  Result := M_name.AsString;
end;

procedure TCompany._Setname(NewValue: String);
begin
  M_name.AsString := NewValue;
end;

function TCompany._GetEmployee: TEmployeeList;
begin
  assert(ValidateMember('TCompany', 'Employee', 1, TEmployeeList));
  Result := TEmployeeList(BoldMembers[1]);
end;

function TCompany._GetJob: TJobList;
begin
  assert(ValidateMember('TCompany', 'Job', 2, TJobList));
  Result := TJobList(BoldMembers[2]);
end;

procedure TCompanyList.Add(NewObject: TCompany);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TCompanyList.IndexOf(anObject: TCompany): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TCompanyList.Includes(anObject: TCompany) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TCompanyList.AddNew: TCompany;
begin
  result := TCompany(InternalAddNew);
end;

procedure TCompanyList.Insert(index: Integer; NewObject: TCompany);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TCompanyList.GetBoldObject(index: Integer): TCompany;
begin
  result := TCompany(GetElement(index));
end;

procedure TCompanyList.SetBoldObject(index: Integer; NewObject: TCompany);
begin;
  SetElement(index, NewObject);
end;

{ TEmployee }

function TEmployee._Get_M_name: TBAString;
begin
  assert(ValidateMember('TEmployee', 'name', 0, TBAString));
  Result := TBAString(BoldMembers[0]);
end;

function TEmployee._Getname: String;
begin
  Result := M_name.AsString;
end;

procedure TEmployee._Setname(NewValue: String);
begin
  M_name.AsString := NewValue;
end;

function TEmployee._GetEmployer: TCompanyList;
begin
  assert(ValidateMember('TEmployee', 'Employer', 1, TCompanyList));
  Result := TCompanyList(BoldMembers[1]);
end;

function TEmployee._GetJob: TJobList;
begin
  assert(ValidateMember('TEmployee', 'Job', 2, TJobList));
  Result := TJobList(BoldMembers[2]);
end;

procedure TEmployeeList.Add(NewObject: TEmployee);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TEmployeeList.IndexOf(anObject: TEmployee): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TEmployeeList.Includes(anObject: TEmployee) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TEmployeeList.AddNew: TEmployee;
begin
  result := TEmployee(InternalAddNew);
end;

procedure TEmployeeList.Insert(index: Integer; NewObject: TEmployee);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TEmployeeList.GetBoldObject(index: Integer): TEmployee;
begin
  result := TEmployee(GetElement(index));
end;

procedure TEmployeeList.SetBoldObject(index: Integer; NewObject: TEmployee);
begin;
  SetElement(index, NewObject);
end;

{ TJob }

function TJob._Get_M_title: TBAString;
begin
  assert(ValidateMember('TJob', 'title', 0, TBAString));
  Result := TBAString(BoldMembers[0]);
end;

function TJob._Gettitle: String;
begin
  Result := M_title.AsString;
end;

procedure TJob._Settitle(NewValue: String);
begin
  M_title.AsString := NewValue;
end;

function TJob._Get_M_salary: TBACurrency;
begin
  assert(ValidateMember('TJob', 'salary', 1, TBACurrency));
  Result := TBACurrency(BoldMembers[1]);
end;

function TJob._Getsalary: Currency;
begin
  Result := M_salary.AsCurrency;
end;

procedure TJob._Setsalary(NewValue: Currency);
begin
  M_salary.AsCurrency := NewValue;
end;

function TJob._Get_M_Employee: TBoldObjectReference;
begin
  assert(ValidateMember('TJob', 'Employee', 2, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[2]);
end;

function TJob._GetEmployee: TEmployee;
begin
  assert(not assigned(M_Employee.BoldObject) or (M_Employee.BoldObject is TEmployee), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'Employee', M_Employee.BoldObject.ClassName, 'TEmployee']));
  Result := TEmployee(M_Employee.BoldObject);
end;

function TJob._Get_M_Employer: TBoldObjectReference;
begin
  assert(ValidateMember('TJob', 'Employer', 3, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[3]);
end;

function TJob._GetEmployer: TCompany;
begin
  assert(not assigned(M_Employer.BoldObject) or (M_Employer.BoldObject is TCompany), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'Employer', M_Employer.BoldObject.ClassName, 'TCompany']));
  Result := TCompany(M_Employer.BoldObject);
end;

procedure TJobList.Add(NewObject: TJob);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TJobList.IndexOf(anObject: TJob): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TJobList.Includes(anObject: TJob) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TJobList.AddNew: TJob;
begin
  result := TJob(InternalAddNew);
end;

procedure TJobList.Insert(index: Integer; NewObject: TJob);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TJobList.GetBoldObject(index: Integer): TJob;
begin
  result := TJob(GetElement(index));
end;

procedure TJobList.SetBoldObject(index: Integer; NewObject: TJob);
begin;
  SetElement(index, NewObject);
end;

function GeneratedCodeCRC: String;
begin
  result := '112469376';
end;

procedure InstallObjectListClasses(BoldObjectListClasses: TBoldGeneratedClassList);
begin
  BoldObjectListClasses.AddObjectEntry('BusinessClassesRoot', TBusinessClassesRootList);
  BoldObjectListClasses.AddObjectEntry('Company', TCompanyList);
  BoldObjectListClasses.AddObjectEntry('Employee', TEmployeeList);
  BoldObjectListClasses.AddObjectEntry('Job', TJobList);
end;

procedure InstallBusinessClasses(BoldObjectClasses: TBoldGeneratedClassList);
begin
  BoldObjectClasses.AddObjectEntry('BusinessClassesRoot', TBusinessClassesRoot);
  BoldObjectClasses.AddObjectEntry('Company', TCompany);
  BoldObjectClasses.AddObjectEntry('Employee', TEmployee);
  BoldObjectClasses.AddObjectEntry('Job', TJob);
end;

var
  CodeDescriptor: TBoldGeneratedCodeDescriptor;

initialization
  CodeDescriptor := GeneratedCodes.AddGeneratedCodeDescriptorWithFunc('AssociationClassExampleClasses', InstallBusinessClasses, InstallObjectListClasses, GeneratedCodeCRC);
finalization
  GeneratedCodes.Remove(CodeDescriptor);
end.

