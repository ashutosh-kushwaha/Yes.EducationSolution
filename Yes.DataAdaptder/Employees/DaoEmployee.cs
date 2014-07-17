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
        public List<EmployeeModel> GetAllEmployees(int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var employees = context.YesEmployees.Select(c => c).ToList();
                    List<EmployeeModel> Employees = null;
                    Employees = new List<EmployeeModel>();
                    if (employees!=null)
                    foreach (var employee in employees)
                    {
                       var Employee = new EmployeeModel();
                       Employee.DesignationID = employee.DesignationID;
                       Employee.DesignationName = employee.YesDesignation.DesignationName;
                       Employee.Address1 = employee.EmployeeAddress1;
                       Employee.Address2 = employee.EmployeeAddress2;
                       Employee.AlternateMobileNo = employee.EmployeeAlternateMobileNo;
                       Employee.City = employee.EmployeeCity;
                       Employee.Disctrict = employee.EmployeeDisctrict;
                       Employee.EmailID = employee.EmployeeEmailID;
                       Employee.FirstName = employee.EmployeeFirstName;
                       Employee.ID = employee.EmployeeID;
                       Employee.LastName = employee.EmployeeLastName;
                       Employee.MiddleName = employee.EmployeeMiddleName;
                       Employee.MobileNo = employee.EmployeeMobileNo;
                       Employee.PinCode = employee.EmployeePinCode;
                       Employee.State = employee.EmployeeState;

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
                    newEmployee.EmployeeDisctrict = NewEmployee.Disctrict;
                    newEmployee.EmployeeEmailID = NewEmployee.EmailID;
                    newEmployee.EmployeeFirstName = NewEmployee.FirstName;
                    newEmployee.EmployeeMiddleName = NewEmployee.MiddleName;
                    newEmployee.EmployeeMobileNo = NewEmployee.MobileNo;
                    newEmployee.EmployeePinCode = NewEmployee.PinCode;
                    newEmployee.EmployeeState = NewEmployee.State;

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
    }
}
