<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="main_master.Blog.View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="text-center">
        <h1>Post Title</h1>
        <h4><a class="text-muted" href="User.aspx">User</a></h4>
        <h5>Tags: <a href="#">tag1</a> <a href="#">tag2</a></h5>
    </div>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec mattis nibh, non fermentum lectus. Sed elementum lorem dui. Fusce quis rutrum massa. Donec efficitur, turpis eu condimentum mollis, metus dolor vulputate velit, vel ullamcorper est dolor dapibus felis. Phasellus et ipsum neque. Praesent varius metus at interdum sodales. Ut sit amet diam sed risus egestas accumsan eu semper tellus. Morbi ut gravida leo. Vestibulum mattis sapien sapien, ac convallis magna tincidunt in. Etiam vulputate tempus quam, ut viverra est fringilla sed. Vivamus semper, nunc eget iaculis porta, felis diam consectetur elit, a suscipit arcu elit sit amet nunc.
    </p>
    <p>
        Fusce luctus venenatis enim, non volutpat lectus ullamcorper in. Pellentesque eget ipsum sit amet mi hendrerit dictum ac quis eros. Sed fermentum lectus vel magna eleifend, id lobortis tellus blandit. Curabitur vitae suscipit ligula. Fusce porta, tellus eu fringilla aliquet, urna ipsum vehicula mauris, nec gravida nisl tellus vitae purus. Duis cursus accumsan ipsum, in fermentum nibh. Nulla nec sagittis augue. In vel accumsan justo. Vivamus vitae mauris non enim fermentum lobortis sit amet blandit metus. Donec eu tortor egestas mauris sollicitudin cursus eu nec ligula. Maecenas sagittis luctus nunc nec hendrerit. Ut a urna est. Sed ut eros mi. Quisque dignissim purus vitae justo iaculis maximus a vitae libero.
    </p>
    <p>
        Donec sollicitudin volutpat ante a imperdiet. Morbi tincidunt augue vitae metus malesuada, non euismod ex luctus. Praesent ultricies vestibulum magna in ullamcorper. Mauris leo lectus, tincidunt nec mollis sed, pulvinar sed nibh. Morbi scelerisque elit a scelerisque finibus. Vestibulum non volutpat massa. In ut nisl quis arcu iaculis iaculis. Mauris in orci nec ligula consectetur tincidunt ut in mauris. Fusce nec aliquam sem. Nam ornare risus sit amet tempor aliquam. Phasellus eget felis vel purus euismod porta. Vivamus interdum sed elit a malesuada. Pellentesque consectetur in nisl non rhoncus.
    </p>
    <p>
        Nullam accumsan justo a dui ullamcorper suscipit. Integer ut velit sed ligula posuere vehicula quis sed tellus. Donec scelerisque consequat dui vel fringilla. Maecenas vulputate fermentum elementum. Praesent elementum, ex id hendrerit eleifend, magna lectus elementum leo, eget rutrum neque purus nec lacus. Proin lectus odio, semper nec ultricies vel, facilisis ac dui. Morbi finibus mauris sit amet elit egestas, ornare egestas lorem luctus. Etiam finibus ligula ut blandit ornare. Aenean nulla tortor, vehicula eu suscipit eu, dapibus ac metus.
    </p>
    <p>
        Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus scelerisque ultricies commodo. Nulla nisl neque, dictum sed hendrerit vitae, iaculis in urna. Proin neque justo, cursus vitae aliquet eu, feugiat sed urna. Morbi at turpis vestibulum diam consequat luctus nec non velit. Maecenas feugiat neque sed dolor accumsan auctor. Maecenas et odio vel nisi cursus iaculis. Nullam fermentum erat sed lorem porta, et congue orci elementum. Praesent luctus dapibus euismod. Ut quis risus et nunc tempus ullamcorper. Nunc sodales nunc in odio dapibus, venenatis maximus ipsum commodo. Donec luctus urna consequat suscipit lobortis. Fusce porttitor nunc at neque elementum, ut auctor nunc pulvinar. 
    </p>
    <hr />
    <h2>Comment</h2>
    <form runat="server">
        <div class="form-group">
            <label for="name">Name</label>
            <input class="form-control" type="text" id="name" placeholder="Name" />
        </div>
        <div class="form-group">
            <label for="comment">Comment</label>
            <textarea class="form-control" id="comment" placeholder="Comment" rows="6"></textarea>
        </div>
        <input type="submit" class="btn btn-primary" value="Submit" />
    </form>
</asp:Content>
