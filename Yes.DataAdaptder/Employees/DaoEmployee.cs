using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public class DaoEmployee : IDaoEmployee
    {
        /// <summary>
        /// Get all the employees for a school. Currently it is not associated with school
        /// </summary>
        /// <param name="SchoolID"></param>
        /// <returns>List of employees</returns>
        public List<EmployeeModel> GetAllEmployees(int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var employees = context.YesEmployees.Select(c => c).ToList();
                    List<EmployeeModel> Employees = null;
                    Employees = new List<EmployeeModel>();
                    if (employees != null)
                        foreach (var employee in employees)
                        {
                            var Employee = new EmployeeModel();
                            Employee.DesignationID = employee.DesignationID;
                            Employee.DesignationName = employee.YesDesignation.DesignationName;
                            Employee.Address1 = employee.EmployeeAddress1;
                            Employee.Address2 = employee.EmployeeAddress2;
                            Employee.AlternateMobileNo = employee.EmployeeAlternateMobileNo;
                            Employee.City = employee.EmployeeCity;
                            if (employee.YesDistrict != null)
                                Employee.District = employee.YesDistrict.DisctrictName;
                            Employee.DistrictID = (int)employee.DistrictID;
                            Employee.EmailID = employee.EmployeeEmailID;
                            Employee.FirstName = employee.EmployeeFirstName;
                            Employee.ID = employee.EmployeeID;
                            Employee.LastName = employee.EmployeeLastName;
                            Employee.MiddleName = employee.EmployeeMiddleName;
                            Employee.MobileNo = employee.EmployeeMobileNo;
                            Employee.PinCode = employee.EmployeePinCode;
                            Employee.StateID = (int)employee.StateID;
                            if (employee.YesDistrict != null && employee.YesDistrict.YesState != null)
                                Employee.State = employee.YesDistrict.YesState.StateName;

                            Employees.Add(Employee);
                        }
                    return Employees;
                }
            }

            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// Create new employee
        /// </summary>
        /// <param name="NewEmployee">Object of new employee</param>
        /// <param name="SchoolID"> School for which you are creating employee</param>
        /// <returns>EmployeeID</returns>
        public int CreateEmployee(EmployeeModel NewEmployee, int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var newEmployee = new YesEmployee();
                    newEmployee.DesignationID = NewEmployee.DesignationID;
                    newEmployee.EmployeeAddress1 = NewEmployee.Address1;
                    newEmployee.EmployeeAddress2 = NewEmployee.Address2;
                    newEmployee.EmployeeAlternateMobileNo = NewEmployee.AlternateMobileNo;
                    newEmployee.EmployeeCity = NewEmployee.City;
                    newEmployee.DistrictID = NewEmployee.DistrictID;
                    newEmployee.EmployeeEmailID = NewEmployee.EmailID;
                    newEmployee.EmployeeFirstName = NewEmployee.FirstName;
                    newEmployee.EmployeeMiddleName = NewEmployee.MiddleName;
                    newEmployee.EmployeeLastName = NewEmployee.LastName;
                    newEmployee.EmployeeMobileNo = NewEmployee.MobileNo;
                    newEmployee.EmployeePinCode = NewEmployee.PinCode;
                    newEmployee.StateID = NewEmployee.StateID;
                    newEmployee.SchoolID = SchoolID;
                    context.YesEmployees.Add(newEmployee);
                    context.SaveChanges();
                    return newEmployee.EmployeeID;
                }
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        /// <summary>
        /// Get all the list of designation
        /// </summary>
        /// <returns>Key value pair collection of designations</returns>
        public IEnumerable<KeyValuePair<int, string>> GetAllDesignations()
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    return context.YesDesignations.ToDictionary(c => c.DesignationID, s => s.DesignationName).ToList();
                }

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        /// <summary>
        /// Get the details of an employee from employee ID
        /// </summary>
        /// <param name="SchoolID">School id of logged in user</param>
        /// <param name="EmployeeID">Employee ID whose details want to get</param>
        /// <returns> Employee details</returns>
        public EmployeeModel GetEmployee(int SchoolID = 0, int EmployeeID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var employee = context.YesEmployees.Where(x => x.EmployeeID == EmployeeID && x.SchoolID == SchoolID).FirstOrDefault();
                    if (employee != null)
                    {
                        EmployeeModel employeeRecord = new EmployeeModel();
                        employeeRecord.Address1 = employee.EmployeeAddress1;
                        employeeRecord.Address2 = employee.EmployeeAddress2;
                        employeeRecord.AlternateMobileNo = employee.EmployeeAlternateMobileNo;
                        employeeRecord.City = employee.EmployeeCity;
                        employeeRecord.DesignationID = employee.DesignationID;
                        if (employee.YesDesignation != null)
                            employeeRecord.DesignationName = employee.YesDesignation.DesignationName;
                        employeeRecord.District = employee.YesDistrict.DisctrictName;
                        if (employee.DistrictID != null)
                            employeeRecord.DistrictID = (int)employee.DistrictID;
                        employeeRecord.EmailID = employee.EmployeeEmailID;
                        employeeRecord.FirstName = employee.EmployeeFirstName;
                        employeeRecord.ID = employee.EmployeeID;
                        employeeRecord.LastName = employee.EmployeeLastName;
                        employeeRecord.MiddleName = employee.EmployeeMiddleName;
                        employeeRecord.MobileNo = employee.EmployeeMobileNo;
                        employeeRecord.PinCode = employee.EmployeePinCode;
                        employeeRecord.State = employee.YesDistrict.YesState.StateName;
                        employeeRecord.StateID = (int)employee.StateID;
                        employeeRecord.SchoolID = SchoolID;
                        return employeeRecord;
                    }
                    else
                        return null;

                }
            }
            catch (Exception ex)
            {

                return null;
            }
        }

        /// <summary>
        /// Update the details of an employee
        /// </summary>
        /// <param name="NewEmployee">New Details of employee to be edited </param>
        /// <param name="SchoolID">School ID of logged in user</param>
        /// <returns>Employee id whose records has updated</returns>
        public int UpdateEmployee(EmployeeModel NewEmployee, int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var newEmployee = context.YesEmployees.Where(x => x.EmployeeID == NewEmployee.ID && x.YesSchool.SchoolID == SchoolID).FirstOrDefault();
                    if (newEmployee != null)
                    {
                        newEmployee.DesignationID = NewEmployee.DesignationID;
                        newEmployee.EmployeeAddress1 = NewEmployee.Address1;
                        newEmployee.EmployeeAddress2 = NewEmployee.Address2;
                        newEmployee.EmployeeAlternateMobileNo = NewEmployee.AlternateMobileNo;
                        newEmployee.EmployeeCity = NewEmployee.City;
                        newEmployee.DistrictID = NewEmployee.DistrictID;
                        newEmployee.EmployeeEmailID = NewEmployee.EmailID;
                        newEmployee.EmployeeFirstName = NewEmployee.FirstName;
                        newEmployee.EmployeeMiddleName = NewEmployee.MiddleName;
                        newEmployee.EmployeeLastName = NewEmployee.LastName;
                        newEmployee.EmployeeMobileNo = NewEmployee.MobileNo;
                        newEmployee.EmployeePinCode = NewEmployee.PinCode;
                        newEmployee.StateID = NewEmployee.StateID;
                        newEmployee.SchoolID = SchoolID;
                        context.SaveChanges();
                    }
                    return newEmployee.EmployeeID;
                }
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        /// <summary>
        /// Delete the record from DB
        /// </summary>
        /// <param name="SchoolID">Logged in user school id</param>
        /// <param name="EmployeeID"> Employee id whose record to be deleted</param>
        /// <returns>Deleted employees id</returns>
        public int DeleteEmployee( int EmployeeID = 0,int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var employee = context.YesEmployees.Where(x => x.EmployeeID == EmployeeID && x.SchoolID == SchoolID).FirstOrDefault();
                    if (employee != null)
                    {
                        context.YesEmployees.Remove(employee);
                        context.SaveChanges();
                        return employee.EmployeeID;
                    }
                    else
                        return 0;

                }
            }
            catch (Exception ex)
            {

                return 0;
            }
        }
    }
}
