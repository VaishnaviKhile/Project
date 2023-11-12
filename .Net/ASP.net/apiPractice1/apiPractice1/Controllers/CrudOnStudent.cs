using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace apiPractice1.Controllers
{
    public class CrudOnStudent : ApiController
    {
        public class Student
        {
            public int id { get; set; }
            public string name { get; set; }
        }

        [HttpGet]
        public DataTable GetAllStudent()
        {
            //https://localhost:44323/api/Practice2/GetAllStudent
            string str = "data source=DESKTOP-P4ROD1M\\SQLEXPRESS;initial catalog=ADO;integrated security=true";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_GetAllElements",con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            DataTable dt = ds.Tables[0];
            return dt;
        }

        [HttpGet]
        public DataTable GetByIdStudent([FromUri] int studentId)
        {
            //fromuri here we use to get data from uri 
            //https://localhost:44323/api/Practice2/GetByIdStudent?studentId=2
            string str = "data source=DESKTOP-P4ROD1M\\SQLEXPRESS;initial catalog=ADO;integrated security=true";
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_GetById", conn);
            cmd.CommandType=CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id", studentId);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            return dt;
        }

        [HttpPost]
        public int SaveStudentData([FromBody] Student s)
        {
            //https://localhost:44323/api/Practice2/SaveStudentData
            int i = 0;
            string str = "data source=DESKTOP-P4ROD1M\\SQLEXPRESS;initial catalog=ADO;integrated security=true";
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_Insertion", conn);
            cmd.CommandType= CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@name", s.name);

           conn.Open();
            i= cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }

        [HttpPut]
        public int UpdateStudentData([FromBody] Student s, [FromUri] int StudentId)
        {
            //https://localhost:44323/api/Practice2/UpdateStudentData?StudentId=1
            int i = 0;
            string str = "data source=DESKTOP-P4ROD1M\\SQLEXPRESS;initial catalog=ADO;integrated security=true";
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_Updation", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id", StudentId);
            cmd.Parameters.AddWithValue("@name", s.name);

            conn.Open();
            i= cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }
        [HttpDelete]
        public int DeleteStudentData([FromUri] int StudentId)
        {
            //https://localhost:44323/api/Practice2/DeleteStudentData?StudentId=8
            int i = 0;
            string str = "data source=DESKTOP-P4ROD1M\\SQLEXPRESS;initial catalog=ADO;integrated security=true";
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_Deletion", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id", StudentId);

            conn.Open();
            i= cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }


    }
}
    