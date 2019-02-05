<%--
  Created by IntelliJ IDEA.
  User: zaleski
  Date: 23.05.2018
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h2 class="modal-title" id="movieTitle"></h2>
                <h3 class="modal-title" id="movieStartTime"></h3>

                <%--<input type="text" id="movieTitle" name="movieTitle" value="ddddd"/>--%>
            </div>
            <div class="modal-body">
                <p id="movieDescription"></p>
                <br>
                <br>
                <p>--------------------------------------</p>
                <p id="movieActors"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" >Rezerwuj</button>
            </div>
        </div>

    </div>
</div>
<script>
    $(document).ready(function(){
        $(".announce").click(function(){ // Click to only happen on announce links
            // $("#movieTitle").val($(this).data('title'));
            document.getElementById("movieTitle").innerHTML = $(this).data('title');
            document.getElementById("movieDescription").innerHTML = $(this).data('description');
            document.getElementById("movieActors").innerHTML = $(this).data('actors');
            document.getElementById("movieStartTime").innerHTML = $(this).data('start');
            $('#myModal').modal('show');
        });
    });
</script>