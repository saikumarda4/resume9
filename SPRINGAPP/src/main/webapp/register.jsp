<!-- login.jsp -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  	<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>


  <div class="form">
     <h3><center><font color='#ffffff'>${message}</font></center></h3>
     <br> 
      <ul class="tab-group">
        
        <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab"><a href="#signup">Register</a></li>
      </ul>
      
      <div class="tab-content">
       <div id="login">   
          
          
          <form action="login.form" method="post">
          
            <div class="field-wrapL">
            <label>
             Username<span class="req">*</span>
            </label>
            <input type="text" name="name" required autocomplete="off"/>
          </div>
          
          <div class="field-wrapL">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
         
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        <div id="signup">   
      
          <form:form action="reg.form" method="POST" commandName="reg">
          
          
          <div class="top-row">
          
          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" autocomplete="off" required class="getcenter" /> 
            <font color='#ffffff'><form:errors path="email"/></font>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password"  autocomplete="off" required class="getcenter" />
            <font color='#ffffff'><form:errors path="password"/></font>
          </div>
          
            <div class="field-wrap">
              <label>
                User Name<span class="req">*</span>
              </label>
              <input type="text" name="userName"  autocomplete="off" required class="getcenter"/>
               <font color='#ffffff'><form:errors path="userName"/></font>
            </div>
            
            <div class="field-wrap">
              <label>
                Qualification<span class="req">*</span>
              </label>
              <input type="text" name="qualification"  autocomplete="off" required class="getcenter"/>
            <font color='#ffffff'><form:errors path="qualification"/></font>
            </div> 
            
            <div class="field-wrap">
              <label>
                Experience<span class="req">*</span>
              </label>
              <input type="text" name="experience"  autocomplete="off" required class="getcenter"/>
            <font color='#ffffff'><form:errors path="experience"/></font>
            </div> 
            
         
          
          <div class="field-wrap">
              <label>
                Mobile<span class="req">*</span>
              </label>
              <input type="text" name="mobile"  autocomplete="off" required class="getcenter"/>
            <font color='#ffffff'><form:errors path="mobile"/></font>
            </div>
            
              <div class="field-wrap">
              <!--  <label>
                Select Department<span class="req">*</span>
              </label> -->
             <select name="name"  class="getcenter">
              <option value=""> Select Department</option>
              <option value="HUMAN RESOURCES">HR</option>
              <option value="MARKETING">MARKET</option>
              <option value="ACCOUNTING">ACCOUNTS</option>
              </select>
          <%--   <font color='#ffffff'><form:errors path="name"/></font> --%>
            
            </div>
              <div class="field-wrap">
              <!-- <label>
                Select Role<span class="req">*</span>
              </label> -->
              <select name="role"   class="getcenter">
              <option value="">Select Role</option>
              <option value="MANAGER">MANAGER</option>
              <option value="CLERK">CLERK</option>
              <option value="DEVELOPER">DEVELOPER</option>
              <option value="TESTER">Tester</option>
              </select>
           <%--  <font color='#ffffff'><form:errors path="name"/></font> --%>
            
            </div>
                 
           <input class="button button-block" type=submit value="Register">
           </div>
           
          
         </form:form>


        </div>
        
       
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
