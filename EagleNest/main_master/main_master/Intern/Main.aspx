<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Intern</title>

</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleIntern</h3>
    <strong>EI</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    
    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home">Home</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#newtab">New Post</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade show active">
            <!--PUT BODY HERE! -->
            <br />
            <div class="row">
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="country" name="country">
                                        <option value="">Pick a country</option>
                                        <option value="US">USA</option>
                                        <option value="CA">Canada</option>
                                        <option value="MX">Mexico</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="state" name="state">
                                        <option value="">Pick a state</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AL">Alabama</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DC">District of Columbia</option>
                                        <option value="DE">Delaware</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="IA">Iowa</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MD">Maryland</option>
                                        <option value="ME">Maine</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MT">Montana</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NY">New York</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="PR">Puerto Rico</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VA">Virginia</option>
                                        <option value="VT">Vermont</option>
                                        <option value="WA">Washington</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="city" name="city">
                                        <option value="">Pick a city</option>
                                        <option value="AK">Evansvile</option>
                                        <option value="AL">Chicago</option>
                                        <option value="AR">Seattle</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="company" name="company">
                                        <option value="">Pick a company</option>
                                        <option value="AK">OneMain</option>
                                        <option value="AL">Google</option>
                                        <option value="AR">Microsoft</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="major" name="major">
                                        <option value="">Pick a major</option>
                                        <option value="RB">Computer Science</option>
                                        <option value="PT">Economics</option>
                                        <option value="NHP">History</option>
                                        <option value="UD">Spanish</option>
                                        <option value="UD">Mechanical Engineering</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="job" name="job">
                                        <option value="">Pick a job</option>
                                        <option value="RB">Musician</option>
                                        <option value="PT">Software Developer</option>
                                        <option value="NHP">Teacher</option>
                                        <option value="UD">Financial Advisor</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="college" name="college">
                                        <option value="">Pick a college</option>
                                        <option value="RB">Romain College Of Business</option>
                                        <option value="PT">Pott College of Science, Engineering and Education</option>
                                        <option value="NHP">Collge of Nursing and Health Professions</option>
                                        <option value="UD">University Division</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="classification" name="classification">
                                        <option value="">Pick classification</option>
                                        <option value="RB">Freshman</option>
                                        <option value="PT">Sophomore</option>
                                        <option value="NHP">Junior</option>
                                        <option value="UD">Senior</option>
                                        <option value="UD">Graduate</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </article>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-sm-9">
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
                            </div>
                            <div class="col-sm-9">
                                <div>
                                    <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                                    <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                                </div>
                                <div id="accordion">
                                    <div id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-outline-dark" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Read More
                                            </button>
                                        </h5>
                                    </div>
                                </div>
                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="text-center">
                                        <p>
                                            I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                            <br />
                                            During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                            <br />
                                            In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
                            </div>
                            <div class="col-sm-9">
                                <div>
                                    <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                                    <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                                </div>
                                <div id="accordion1">
                                    <div id="headingTwo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-outline-dark" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                Read More
                                            </button>
                                        </h5>
                                    </div>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion1">
                                    <div class="text-center">
                                        <p>
                                            I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                            <br />
                                            During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                            <br />
                                            In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
                            </div>
                            <div class="col-sm-9">
                                <div>
                                    <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                                    <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                                </div>
                                <div id="accordion2">
                                    <div id="heading3">
                                        <h5 class="mb-0">
                                            <button class="btn btn-outline-dark" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse3">
                                                Read More
                                            </button>
                                        </h5>
                                    </div>
                                </div>
                                <div id="collapse3" class="collapse" aria-labelledby="heading3" data-parent="#accordion2">
                                    <div class="text-center">
                                        <p>
                                            I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                            <br />
                                            During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                            <br />
                                            In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
                            </div>
                            <div class="col-sm-9">
                                <div>
                                    <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                                    <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                                </div>
                                <div id="accordion3">
                                    <div id="heading4">
                                        <h5 class="mb-0">
                                            <button class="btn btn-outline-dark" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                                                Read More
                                            </button>
                                        </h5>
                                    </div>
                                </div>
                                <div id="collapse4" class="collapse" aria-labelledby="heading4" data-parent="#accordion3">
                                    <div class="text-center">
                                        <p>
                                            I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                            <br />
                                            During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                            <br />
                                            In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card">
                        <article class="card-group-item">
                            <header class="card-header">
                                <h6 class="title">Trending</h6>
                            </header>
                            <div class="filter-content">
                                <div class="card-body">
                                    <form>
                                    </form>

                                </div>
                                <!-- card-body.// -->
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
        <div id="newtab" class="tab-pane fade">
            <br />
            <div class="container">
                <form runat="server">
                    <div class="form-row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="major">Major(s)</label>
                            <asp:TextBox class="form-control" ID="major" name="major" type="text" placeholder="Enter major" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="classification">Classification</label>
                            <asp:TextBox class="form-control" ID="classification" name="classification" type="text" placeholder="Enter classification" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="term">Term</label>
                            <asp:TextBox class="form-control" ID="term" name="lastname" type="text" placeholder="Enter term e.g. Summer 2019" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="company">Company</label>
                            <asp:TextBox class="form-control" ID="company" name="company" type="text" placeholder="Enter company" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <asp:TextBox class="form-control" ID="email" name="email" type="email" placeholder="Enter email" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="linkedIn">LinkedIn</label>
                            <asp:TextBox class="form-control" ID="linkedIn" name="linkedIn" type="text" placeholder="Enter linkedIn url" runat="server" />
                        </div>
                        <div class="form-group">
                        <label for="phone">Phone</label>
                        <asp:Textbox class="form-control" id="phone" name="phone" type="text" placeholder="Enter phone number" runat="server" />
                    </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="position">Position</label>
                            <asp:TextBox class="form-control" ID="position" name="position" type="text" placeholder="Enter position" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="country">Country</label>
                            <asp:TextBox class="form-control" ID="country" name="country" type="text" placeholder="Enter country" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="state">State/Province</label>
                            <asp:TextBox class="form-control" ID="state" name="state" type="text" placeholder="Enter state or province" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="city">City</label>
                            <asp:TextBox class="form-control" ID="city" name="city" type="text" placeholder="Enter city" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="twitter">Twitter</label>
                            <asp:TextBox class="form-control" ID="twitter" name="twitter" type="text" placeholder="Enter twitter url" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="Instagram">Instagram</label>
                            <asp:TextBox class="form-control" ID="instagram" name="instagram" type="text" placeholder="Enter Instagram url" runat="server" />
                        </div>
                        <div class="form-group">
                        <label for="facebook">Facebook</label>
                        <asp:Textbox class="form-control" id="facebook" name="linkedIn" type="text" placeholder="Enter facebook url" runat="server" />
                    </div>
                    </div>
                    </div>
                    <div class="form-group">
                        <label for="resources">What resources did you use to attain internship?</label>
                        <asp:Textbox class="form-control" id="resources" name="resources" type="text" placeholder="max 50 words" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="description">Job Description</label>
                        <asp:Textbox class="form-control is-invalid" id="description" name="description" type="text" placeholder="max 100 words" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="lessons">What was your biggest takeaways from your internship?</label>
                        <asp:Textbox class="form-control" id="lessons" name="lessons" type="text" placeholder="max 50 words" runat="server" />
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input type="file" id="picture" name="picture" class="field-long" required="required" accept="image/*" />
                    </div>
                    <button type="submit" class="btn btn-outline-dark" OnClick="post_Click">Post</button>
                </form>
            </div>
            
        
    </div>


</asp:Content>
