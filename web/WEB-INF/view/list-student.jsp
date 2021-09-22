<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html>
    <style>
        body{
            font-family: arial;
        }
        a{
            text-decoration: none;
        }

        .table {
            width: 70%;
            margin-bottom: 1rem;
            background-color: transparent;
        }

        .table th,
        .table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }

        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6;
        }

        .table tbody + tbody {
            border-top: 2px solid #dee2e6;
        }

        .table .table {
            background-color: #fff;
        }

        .table-sm th,
        .table-sm td {
            padding: 0.3rem;
        }

        .table-bordered {
            border: 1px solid #dee2e6;
        }

        .table-bordered th,
        .table-bordered td {
            border: 1px solid #dee2e6;
        }

        .table-bordered thead th,
        .table-bordered thead td {
            border-bottom-width: 2px;
        }

        .table-borderless th,
        .table-borderless td,
        .table-borderless thead th,
        .table-borderless tbody + tbody {
            border: 0;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .table-hover tbody tr:hover {
            background-color: rgba(0, 0, 0, 0.075);
        }

        .table-primary,
        .table-primary > th,
        .table-primary > td {
            background-color: #b8daff;
        }

        .table-hover .table-primary:hover {
            background-color: #9fcdff;
        }

        .table-hover .table-primary:hover > td,
        .table-hover .table-primary:hover > th {
            background-color: #9fcdff;
        }

        .table-secondary,
        .table-secondary > th,
        .table-secondary > td {
            background-color: #d6d8db;
        }

        .table-hover .table-secondary:hover {
            background-color: #c8cbcf;
        }

        .table-hover .table-secondary:hover > td,
        .table-hover .table-secondary:hover > th {
            background-color: #c8cbcf;
        }

        .table-success,
        .table-success > th,
        .table-success > td {
            background-color: #c3e6cb;
        }

        .table-hover .table-success:hover {
            background-color: #b1dfbb;
        }

        .table-hover .table-success:hover > td,
        .table-hover .table-success:hover > th {
            background-color: #b1dfbb;
        }

        .table-info,
        .table-info > th,
        .table-info > td {
            background-color: #bee5eb;
        }

        .table-hover .table-info:hover {
            background-color: #abdde5;
        }

        .table-hover .table-info:hover > td,
        .table-hover .table-info:hover > th {
            background-color: #abdde5;
        }

        .table-warning,
        .table-warning > th,
        .table-warning > td {
            background-color: #ffeeba;
        }

        .table-hover .table-warning:hover {
            background-color: #ffe8a1;
        }

        .table-hover .table-warning:hover > td,
        .table-hover .table-warning:hover > th {
            background-color: #ffe8a1;
        }

        .table-danger,
        .table-danger > th,
        .table-danger > td {
            background-color: #f5c6cb;
        }

        .table-hover .table-danger:hover {
            background-color: #f1b0b7;
        }

        .table-hover .table-danger:hover > td,
        .table-hover .table-danger:hover > th {
            background-color: #f1b0b7;
        }

        .table-light,
        .table-light > th,
        .table-light > td {
            background-color: #fdfdfe;
        }

        .table-hover .table-light:hover {
            background-color: #ececf6;
        }

        .table-hover .table-light:hover > td,
        .table-hover .table-light:hover > th {
            background-color: #ececf6;
        }

        .table-dark,
        .table-dark > th,
        .table-dark > td {
            background-color: #c6c8ca;
        }

        .table-hover .table-dark:hover {
            background-color: #b9bbbe;
        }

        .table-hover .table-dark:hover > td,
        .table-hover .table-dark:hover > th {
            background-color: #b9bbbe;
        }

        .table-active,
        .table-active > th,
        .table-active > td {
            background-color: rgba(0, 0, 0, 0.075);
        }

        .table-hover .table-active:hover {
            background-color: rgba(0, 0, 0, 0.075);
        }

        .table-hover .table-active:hover > td,
        .table-hover .table-active:hover > th {
            background-color: rgba(0, 0, 0, 0.075);
        }

        .table .thead-dark th {
            color: #fff;
            background-color: #212529;
            border-color: #32383e;
        }

        .table .thead-light th {
            color: #495057;
            background-color: #e9ecef;
            border-color: #dee2e6;
        }

        .table-dark {
            color: #fff;
            background-color: #212529;
        }

        .table-dark th,
        .table-dark td,
        .table-dark thead th {
            border-color: #32383e;
        }

        .table-dark.table-bordered {
            border: 0;
        }

        .table-dark.table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(255, 255, 255, 0.05);
        }

        .table-dark.table-hover tbody tr:hover {
            background-color: rgba(255, 255, 255, 0.075);
        }

        @media (max-width: 575.98px) {
            .table-responsive-sm {
                display: block;
                width: 100%;
                overflow-x: auto;
                -webkit-overflow-scrolling: touch;
                -ms-overflow-style: -ms-autohiding-scrollbar;
            }
            .table-responsive-sm > .table-bordered {
                border: 0;
            }
        }

        @media (max-width: 767.98px) {
            .table-responsive-md {
                display: block;
                width: 100%;
                overflow-x: auto;
                -webkit-overflow-scrolling: touch;
                -ms-overflow-style: -ms-autohiding-scrollbar;
            }
            .table-responsive-md > .table-bordered {
                border: 0;
            }
        }

        @media (max-width: 991.98px) {
            .table-responsive-lg {
                display: block;
                width: 100%;
                overflow-x: auto;
                -webkit-overflow-scrolling: touch;
                -ms-overflow-style: -ms-autohiding-scrollbar;
            }
            .table-responsive-lg > .table-bordered {
                border: 0;
            }
        }

        @media (max-width: 1199.98px) {
            .table-responsive-xl {
                display: block;
                width: 100%;
                overflow-x: auto;
                -webkit-overflow-scrolling: touch;
                -ms-overflow-style: -ms-autohiding-scrollbar;
            }
            .table-responsive-xl > .table-bordered {
                border: 0;
            }
        }

        .table-responsive {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
            -ms-overflow-style: -ms-autohiding-scrollbar;
        }

        .table-responsive > .table-bordered {
            border: 0;
        }



        .badge {
            display: inline-block;
            padding: 0.25em 0.4em;
            font-size: 75%;
            font-weight: 700;
            line-height: 1;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: 0.25rem;
        }

        .badge:empty {
            display: none;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .table-dark.table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(255, 255, 255, 0.05);
        }

        .btn .badge {
            position: relative;
            top: -1px;
        }

        .badge-pill {
            padding-right: 0.6em;
            padding-left: 0.6em;
            border-radius: 10rem;
        }

        .badge-primary {
            color: #fff;
            background-color: #007bff;
        }

        .badge-primary[href]:hover, .badge-primary[href]:focus {
            color: #fff;
            text-decoration: none;
            background-color: #0062cc;
        }

        .badge-secondary {
            color: #fff;
            background-color: #6c757d;
        }

        .badge-secondary[href]:hover, .badge-secondary[href]:focus {
            color: #fff;
            text-decoration: none;
            background-color: #545b62;
        }

        .badge-success {
            color: #fff;
            background-color: #28a745;
        }

        .badge-success[href]:hover, .badge-success[href]:focus {
            color: #fff;
            text-decoration: none;
            background-color: #1e7e34;
        }

        .badge-info {
            color: #fff;
            background-color: #17a2b8;
        }

        .badge-info[href]:hover, .badge-info[href]:focus {
            color: #fff;
            text-decoration: none;
            background-color: #117a8b;
        }

        .badge-warning {
            color: #212529;
            background-color: #ffc107;
        }

        .badge-warning[href]:hover, .badge-warning[href]:focus {
            color: #212529;
            text-decoration: none;
            background-color: #d39e00;
        }

        .badge-danger {
            color: #fff;
            background-color: #dc3545;
        }

        .badge-danger[href]:hover, .badge-danger[href]:focus {
            color: #fff;
            text-decoration: none;
            background-color: #bd2130;
        }

        .badge-light {
            color: #212529;
            background-color: #f8f9fa;
        }

        .badge-light[href]:hover, .badge-light[href]:focus {
            color: #212529;
            text-decoration: none;
            background-color: #dae0e5;
        }

        .badge-dark {
            color: #fff;
            background-color: #343a40;
        }

        .badge-dark[href]:hover, .badge-dark[href]:focus {
            color: #fff;
            text-decoration: none;
            background-color: #1d2124;
        }

    </style>

    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

        <title>List Student</title> 
    </head> 
    <body> 
        <h1 class="text-center"> Manage Student</h1> 
        <table class="table table-striped">
            <thead class="thead-light">
                <tr>
                    <th scope="col">Nama</th>
                    <th scope="col">Status</th>
                </tr>

            <tbody>
                <c:forEach var = "student" items = "${students}">  

                    <tr> 
                        <!-- dollar ngasih value -->
                        <!-- name -->
                        <td>${student.fullName}</td> 
                        <!-- status -->
                        <td style="text-align: center">${student.status}</td> 
                        <!-- grade -->
                        <td style="text-align: center"> 
                            <a href ="list-grade?id=${student.id}" class="badge badge-primary"> Grade </a> 
                        </td>
                        <!-- excul -->
                        <td style="text-align: center"> 
                            <a href ="list-exculs?id=${student.id}"  class="badge badge-success"> Extraculicular </a> 
                        </td>
                        <!-- update -->
                        <td style="text-align: center"> 
                            <a href ="update-student?id=${student.id}" class="badge badge-warning"> Update </a> 
                        </td> 
                        <!-- delete -->
                        <td style="text-align: center"> 
                            <a href ="delete-student?id=${student.id}" class="badge badge-danger"> Delete </a> 
                        </td> 


                    </tr> 

                </c:forEach> 
            </tbody>
        </table> 
        </br>
        <a href="insert-student?id=${student.id}" class="badge badge-success">Add New Student</a> 
    </body> 
</html>