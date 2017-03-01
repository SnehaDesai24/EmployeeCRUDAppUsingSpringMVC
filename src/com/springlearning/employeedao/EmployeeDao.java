package com.springlearning.employeedao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springlearning.employeebean.EmployeeBean;

public class EmployeeDao {

		JdbcTemplate template;
		
		public void setTemplate(JdbcTemplate template){
			this.template = template;
		}

		public int saveEmployee(EmployeeBean e){
			String sql="insert into employee_details(emp_name,contact_no,email,Address)values('"+ 
						e.getEmpName()+"','" + e.getEmpTel() +"','" + e.getEmpEmail()+"','"
						+e.getEmpAdd()+"');";
			
			return template.update(sql);
		}
		
		public List<EmployeeBean> getAllEmployees(){
			String sql="select * from employee.employee_details";
			
			return (List<EmployeeBean>) template.query(sql, new RowMapper<EmployeeBean>(){
				
				public EmployeeBean mapRow(java.sql.ResultSet rs, int row) throws SQLException {
							
					EmployeeBean e = new EmployeeBean();
					e.setEmpId(rs.getInt("emp_id"));
					e.setEmpName(rs.getString("emp_name"));
					e.setEmpTel(rs.getString("contact_no"));
					e.setEmpEmail(rs.getString("email"));
					e.setEmpAdd(rs.getString("address"));
					return e;
				}
				
			});
		}
		
		public EmployeeBean editEmployee(int id){
			String sql="select emp_id as empId,emp_name as empName,contact_no as empTel,"
					+ "email as empEmail,address as empAdd from employee.employee_details where emp_id=?";
			
			return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<EmployeeBean>(EmployeeBean.class));
		}
		
		public int updateEmployee(EmployeeBean bean){
			String sql="update employee.employee_details set emp_name='"+bean.getEmpName()+"',contact_no='"+bean.getEmpTel()+"',email='"+
						bean.getEmpEmail()+"',address='" + bean.getEmpAdd()+"' where emp_id="+bean.getEmpId();
			
			return template.update(sql);
		}
		
		public int deleteEmployee(int id){
			String sql="delete from employee.employee_details where emp_id="+ id;
			return template.update(sql);
		}
}
