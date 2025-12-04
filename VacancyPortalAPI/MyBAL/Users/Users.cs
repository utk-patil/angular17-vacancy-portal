using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using MyBAL.Users.Models;
using MyLibrary.Utilities;

namespace MyBAL.Users
{
    public class Users
    {
        private readonly UserDataContext moUserDataContext;

        public Users(UserDataContext foUserDataContext)
        {
            this.moUserDataContext = foUserDataContext;
        }

        public async Task<(LoginUser? User, int inSuccess)> GetUserLoginAsync(string fsUsername, string fsPassword)
        {
            var loSuccess = new SqlParameter
            {
                ParameterName = "@inSuccess",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output,
                Value = StoredProcedureStatusCode.NoStatus
            };

            LoginUser? loUser = moUserDataContext.tblUsers
                                .FromSqlInterpolated($@"EXEC GetUserLogin @stUsername = {fsUsername}, @stPassword = {fsPassword}, @inSuccess = {loSuccess} OUTPUT")
                                .AsEnumerable()
                                .FirstOrDefault();

            return (loUser ?? new LoginUser(), (int)loSuccess.Value);
        }

    }
}
