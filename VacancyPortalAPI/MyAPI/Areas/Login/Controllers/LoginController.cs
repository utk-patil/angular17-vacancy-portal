using Microsoft.AspNetCore.Mvc;
using MyBAL.Users.Models;
using MyLibrary.Utilities;

namespace MyAPI.Areas.Login.Controllers
{
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly UserDataContext moUserDataContext;

        public LoginController(UserDataContext foUserDataContext)
        {
            this.moUserDataContext = foUserDataContext;
        }

        [HttpPost]
        [Route("api/v1/auth/login")]
        public async Task<IActionResult> GetUserLogin([FromBody] LoginRequest foLoginRequest)
        {
            LoginUser? loLoginUser = new LoginUser();
            int liSuccess = StoredProcedureStatusCode.NoStatus;

            MyBAL.Users.Users loUserBAL = new MyBAL.Users.Users(moUserDataContext);

            (loLoginUser, liSuccess) = await loUserBAL.GetUserLoginAsync(foLoginRequest.stUsername, foLoginRequest.stPassword);

            return Ok(new
            {
                status = liSuccess,
                message = liSuccess switch
                {
                    1 => "Login successful",
                    104 => "User not found",
                    107 => "Invalid password",
                    _ => "Unknown error"
                },
                loginuser = loLoginUser
            });
        }
    }
}
