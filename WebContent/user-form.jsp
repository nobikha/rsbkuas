<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Covid Kabupaten Purworejo</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
                    <div>
                        <a href="<%=request.getContextPath()%>/list" class="navbar-brand"> Kabupaten Purworejo </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link"style="color: black">List</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Ubah Data
                                </c:if>
                                <c:if test="${user == null}">
                                    Tambah Daerah
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Desa</label> <input type="text" value="<c:out value='${user.desa}' />" class="form-control" name="desa" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Kecamatan</label> <input type="text" value="<c:out value='${user.kecamatan}' />" class="form-control" name="kecamatan"required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Positif</label> <input type="text" value="<c:out value='${user.positif}' />" class="form-control" name="positif"required="required">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>