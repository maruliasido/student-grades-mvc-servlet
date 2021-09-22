<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html>


    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <style>
            .table {
                width: 100%;
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
            body{
                font-family: arial;
            }


            .btn {
                display: inline-block;
                font-weight: 400;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                border: 1px solid transparent;
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
                line-height: 1.5;
                border-radius: 0.25rem;
                transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }

            @media screen and (prefers-reduced-motion: reduce) {
                .btn {
                    transition: none;
                }
            }

            .btn:hover, .btn:focus {
                text-decoration: none;
            }

            .btn:focus, .btn.focus {
                outline: 0;
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
            }

            .btn.disabled, .btn:disabled {
                opacity: 0.65;
            }

            .btn:not(:disabled):not(.disabled) {
                cursor: pointer;
            }

            a.btn.disabled,
            fieldset:disabled a.btn {
                pointer-events: none;
            }

            .btn-primary {
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-primary:hover {
                color: #fff;
                background-color: #0069d9;
                border-color: #0062cc;
            }

            .btn-primary:focus, .btn-primary.focus {
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
            }

            .btn-primary.disabled, .btn-primary:disabled {
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-primary:not(:disabled):not(.disabled):active, .btn-primary:not(:disabled):not(.disabled).active,
            .show > .btn-primary.dropdown-toggle {
                color: #fff;
                background-color: #0062cc;
                border-color: #005cbf;
            }

            .btn-primary:not(:disabled):not(.disabled):active:focus, .btn-primary:not(:disabled):not(.disabled).active:focus,
            .show > .btn-primary.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
            }

            .btn-secondary {
                color: #fff;
                background-color: #6c757d;
                border-color: #6c757d;
            }

            .btn-secondary:hover {
                color: #fff;
                background-color: #5a6268;
                border-color: #545b62;
            }

            .btn-secondary:focus, .btn-secondary.focus {
                box-shadow: 0 0 0 0.2rem rgba(108, 117, 125, 0.5);
            }

            .btn-secondary.disabled, .btn-secondary:disabled {
                color: #fff;
                background-color: #6c757d;
                border-color: #6c757d;
            }

            .btn-secondary:not(:disabled):not(.disabled):active, .btn-secondary:not(:disabled):not(.disabled).active,
            .show > .btn-secondary.dropdown-toggle {
                color: #fff;
                background-color: #545b62;
                border-color: #4e555b;
            }

            .btn-secondary:not(:disabled):not(.disabled):active:focus, .btn-secondary:not(:disabled):not(.disabled).active:focus,
            .show > .btn-secondary.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(108, 117, 125, 0.5);
            }

            .btn-success {
                color: #fff;
                background-color: #28a745;
                border-color: #28a745;
            }

            .btn-success:hover {
                color: #fff;
                background-color: #218838;
                border-color: #1e7e34;
            }

            .btn-success:focus, .btn-success.focus {
                box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.5);
            }

            .btn-success.disabled, .btn-success:disabled {
                color: #fff;
                background-color: #28a745;
                border-color: #28a745;
            }

            .btn-success:not(:disabled):not(.disabled):active, .btn-success:not(:disabled):not(.disabled).active,
            .show > .btn-success.dropdown-toggle {
                color: #fff;
                background-color: #1e7e34;
                border-color: #1c7430;
            }

            .btn-success:not(:disabled):not(.disabled):active:focus, .btn-success:not(:disabled):not(.disabled).active:focus,
            .show > .btn-success.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.5);
            }

            .btn-info {
                color: #fff;
                background-color: #17a2b8;
                border-color: #17a2b8;
            }

            .btn-info:hover {
                color: #fff;
                background-color: #138496;
                border-color: #117a8b;
            }

            .btn-info:focus, .btn-info.focus {
                box-shadow: 0 0 0 0.2rem rgba(23, 162, 184, 0.5);
            }

            .btn-info.disabled, .btn-info:disabled {
                color: #fff;
                background-color: #17a2b8;
                border-color: #17a2b8;
            }

            .btn-info:not(:disabled):not(.disabled):active, .btn-info:not(:disabled):not(.disabled).active,
            .show > .btn-info.dropdown-toggle {
                color: #fff;
                background-color: #117a8b;
                border-color: #10707f;
            }

            .btn-info:not(:disabled):not(.disabled):active:focus, .btn-info:not(:disabled):not(.disabled).active:focus,
            .show > .btn-info.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(23, 162, 184, 0.5);
            }

            .btn-warning {
                color: #212529;
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-warning:hover {
                color: #212529;
                background-color: #e0a800;
                border-color: #d39e00;
            }

            .btn-warning:focus, .btn-warning.focus {
                box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.5);
            }

            .btn-warning.disabled, .btn-warning:disabled {
                color: #212529;
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-warning:not(:disabled):not(.disabled):active, .btn-warning:not(:disabled):not(.disabled).active,
            .show > .btn-warning.dropdown-toggle {
                color: #212529;
                background-color: #d39e00;
                border-color: #c69500;
            }

            .btn-warning:not(:disabled):not(.disabled):active:focus, .btn-warning:not(:disabled):not(.disabled).active:focus,
            .show > .btn-warning.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.5);
            }

            .btn-danger {
                color: #fff;
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-danger:hover {
                color: #fff;
                background-color: #c82333;
                border-color: #bd2130;
            }

            .btn-danger:focus, .btn-danger.focus {
                box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.5);
            }

            .btn-danger.disabled, .btn-danger:disabled {
                color: #fff;
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-danger:not(:disabled):not(.disabled):active, .btn-danger:not(:disabled):not(.disabled).active,
            .show > .btn-danger.dropdown-toggle {
                color: #fff;
                background-color: #bd2130;
                border-color: #b21f2d;
            }

            .btn-danger:not(:disabled):not(.disabled):active:focus, .btn-danger:not(:disabled):not(.disabled).active:focus,
            .show > .btn-danger.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.5);
            }

            .btn-light {
                color: #212529;
                background-color: #f8f9fa;
                border-color: #f8f9fa;
            }

            .btn-light:hover {
                color: #212529;
                background-color: #e2e6ea;
                border-color: #dae0e5;
            }

            .btn-light:focus, .btn-light.focus {
                box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
            }

            .btn-light.disabled, .btn-light:disabled {
                color: #212529;
                background-color: #f8f9fa;
                border-color: #f8f9fa;
            }

            .btn-light:not(:disabled):not(.disabled):active, .btn-light:not(:disabled):not(.disabled).active,
            .show > .btn-light.dropdown-toggle {
                color: #212529;
                background-color: #dae0e5;
                border-color: #d3d9df;
            }

            .btn-light:not(:disabled):not(.disabled):active:focus, .btn-light:not(:disabled):not(.disabled).active:focus,
            .show > .btn-light.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
            }

            .btn-dark {
                color: #fff;
                background-color: #343a40;
                border-color: #343a40;
            }

            .btn-dark:hover {
                color: #fff;
                background-color: #23272b;
                border-color: #1d2124;
            }

            .btn-dark:focus, .btn-dark.focus {
                box-shadow: 0 0 0 0.2rem rgba(52, 58, 64, 0.5);
            }

            .btn-dark.disabled, .btn-dark:disabled {
                color: #fff;
                background-color: #343a40;
                border-color: #343a40;
            }

            .btn-dark:not(:disabled):not(.disabled):active, .btn-dark:not(:disabled):not(.disabled).active,
            .show > .btn-dark.dropdown-toggle {
                color: #fff;
                background-color: #1d2124;
                border-color: #171a1d;
            }

            .btn-dark:not(:disabled):not(.disabled):active:focus, .btn-dark:not(:disabled):not(.disabled).active:focus,
            .show > .btn-dark.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(52, 58, 64, 0.5);
            }

            .btn-outline-primary {
                color: #007bff;
                background-color: transparent;
                background-image: none;
                border-color: #007bff;
            }

            .btn-outline-primary:hover {
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-outline-primary:focus, .btn-outline-primary.focus {
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
            }

            .btn-outline-primary.disabled, .btn-outline-primary:disabled {
                color: #007bff;
                background-color: transparent;
            }

            .btn-outline-primary:not(:disabled):not(.disabled):active, .btn-outline-primary:not(:disabled):not(.disabled).active,
            .show > .btn-outline-primary.dropdown-toggle {
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-outline-primary:not(:disabled):not(.disabled):active:focus, .btn-outline-primary:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-primary.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
            }

            .btn-outline-secondary {
                color: #6c757d;
                background-color: transparent;
                background-image: none;
                border-color: #6c757d;
            }

            .btn-outline-secondary:hover {
                color: #fff;
                background-color: #6c757d;
                border-color: #6c757d;
            }

            .btn-outline-secondary:focus, .btn-outline-secondary.focus {
                box-shadow: 0 0 0 0.2rem rgba(108, 117, 125, 0.5);
            }

            .btn-outline-secondary.disabled, .btn-outline-secondary:disabled {
                color: #6c757d;
                background-color: transparent;
            }

            .btn-outline-secondary:not(:disabled):not(.disabled):active, .btn-outline-secondary:not(:disabled):not(.disabled).active,
            .show > .btn-outline-secondary.dropdown-toggle {
                color: #fff;
                background-color: #6c757d;
                border-color: #6c757d;
            }

            .btn-outline-secondary:not(:disabled):not(.disabled):active:focus, .btn-outline-secondary:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-secondary.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(108, 117, 125, 0.5);
            }

            .btn-outline-success {
                color: #28a745;
                background-color: transparent;
                background-image: none;
                border-color: #28a745;
            }

            .btn-outline-success:hover {
                color: #fff;
                background-color: #28a745;
                border-color: #28a745;
            }

            .btn-outline-success:focus, .btn-outline-success.focus {
                box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.5);
            }

            .btn-outline-success.disabled, .btn-outline-success:disabled {
                color: #28a745;
                background-color: transparent;
            }

            .btn-outline-success:not(:disabled):not(.disabled):active, .btn-outline-success:not(:disabled):not(.disabled).active,
            .show > .btn-outline-success.dropdown-toggle {
                color: #fff;
                background-color: #28a745;
                border-color: #28a745;
            }

            .btn-outline-success:not(:disabled):not(.disabled):active:focus, .btn-outline-success:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-success.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.5);
            }

            .btn-outline-info {
                color: #17a2b8;
                background-color: transparent;
                background-image: none;
                border-color: #17a2b8;
            }

            .btn-outline-info:hover {
                color: #fff;
                background-color: #17a2b8;
                border-color: #17a2b8;
            }

            .btn-outline-info:focus, .btn-outline-info.focus {
                box-shadow: 0 0 0 0.2rem rgba(23, 162, 184, 0.5);
            }

            .btn-outline-info.disabled, .btn-outline-info:disabled {
                color: #17a2b8;
                background-color: transparent;
            }

            .btn-outline-info:not(:disabled):not(.disabled):active, .btn-outline-info:not(:disabled):not(.disabled).active,
            .show > .btn-outline-info.dropdown-toggle {
                color: #fff;
                background-color: #17a2b8;
                border-color: #17a2b8;
            }

            .btn-outline-info:not(:disabled):not(.disabled):active:focus, .btn-outline-info:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-info.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(23, 162, 184, 0.5);
            }

            .btn-outline-warning {
                color: #ffc107;
                background-color: transparent;
                background-image: none;
                border-color: #ffc107;
            }

            .btn-outline-warning:hover {
                color: #212529;
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-outline-warning:focus, .btn-outline-warning.focus {
                box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.5);
            }

            .btn-outline-warning.disabled, .btn-outline-warning:disabled {
                color: #ffc107;
                background-color: transparent;
            }

            .btn-outline-warning:not(:disabled):not(.disabled):active, .btn-outline-warning:not(:disabled):not(.disabled).active,
            .show > .btn-outline-warning.dropdown-toggle {
                color: #212529;
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-outline-warning:not(:disabled):not(.disabled):active:focus, .btn-outline-warning:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-warning.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.5);
            }

            .btn-outline-danger {
                color: #dc3545;
                background-color: transparent;
                background-image: none;
                border-color: #dc3545;
            }

            .btn-outline-danger:hover {
                color: #fff;
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-outline-danger:focus, .btn-outline-danger.focus {
                box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.5);
            }

            .btn-outline-danger.disabled, .btn-outline-danger:disabled {
                color: #dc3545;
                background-color: transparent;
            }

            .btn-outline-danger:not(:disabled):not(.disabled):active, .btn-outline-danger:not(:disabled):not(.disabled).active,
            .show > .btn-outline-danger.dropdown-toggle {
                color: #fff;
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-outline-danger:not(:disabled):not(.disabled):active:focus, .btn-outline-danger:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-danger.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.5);
            }

            .btn-outline-light {
                color: #f8f9fa;
                background-color: transparent;
                background-image: none;
                border-color: #f8f9fa;
            }

            .btn-outline-light:hover {
                color: #212529;
                background-color: #f8f9fa;
                border-color: #f8f9fa;
            }

            .btn-outline-light:focus, .btn-outline-light.focus {
                box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
            }

            .btn-outline-light.disabled, .btn-outline-light:disabled {
                color: #f8f9fa;
                background-color: transparent;
            }

            .btn-outline-light:not(:disabled):not(.disabled):active, .btn-outline-light:not(:disabled):not(.disabled).active,
            .show > .btn-outline-light.dropdown-toggle {
                color: #212529;
                background-color: #f8f9fa;
                border-color: #f8f9fa;
            }

            .btn-outline-light:not(:disabled):not(.disabled):active:focus, .btn-outline-light:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-light.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
            }

            .btn-outline-dark {
                color: #343a40;
                background-color: transparent;
                background-image: none;
                border-color: #343a40;
            }

            .btn-outline-dark:hover {
                color: #fff;
                background-color: #343a40;
                border-color: #343a40;
            }

            .btn-outline-dark:focus, .btn-outline-dark.focus {
                box-shadow: 0 0 0 0.2rem rgba(52, 58, 64, 0.5);
            }

            .btn-outline-dark.disabled, .btn-outline-dark:disabled {
                color: #343a40;
                background-color: transparent;
            }

            .btn-outline-dark:not(:disabled):not(.disabled):active, .btn-outline-dark:not(:disabled):not(.disabled).active,
            .show > .btn-outline-dark.dropdown-toggle {
                color: #fff;
                background-color: #343a40;
                border-color: #343a40;
            }

            .btn-outline-dark:not(:disabled):not(.disabled):active:focus, .btn-outline-dark:not(:disabled):not(.disabled).active:focus,
            .show > .btn-outline-dark.dropdown-toggle:focus {
                box-shadow: 0 0 0 0.2rem rgba(52, 58, 64, 0.5);
            }

            .btn-link {
                font-weight: 400;
                color: #007bff;
                background-color: transparent;
            }

            .btn-link:hover {
                color: #0056b3;
                text-decoration: underline;
                background-color: transparent;
                border-color: transparent;
            }

            .btn-link:focus, .btn-link.focus {
                text-decoration: underline;
                border-color: transparent;
                box-shadow: none;
            }

            .btn-link:disabled, .btn-link.disabled {
                color: #6c757d;
                pointer-events: none;
            }

            .btn-lg, .btn-group-lg > .btn {
                padding: 0.5rem 1rem;
                font-size: 1.25rem;
                line-height: 1.5;
                border-radius: 0.3rem;
            }

            .btn-sm, .btn-group-sm > .btn {
                padding: 0.25rem 0.5rem;
                font-size: 0.875rem;
                line-height: 1.5;
                border-radius: 0.2rem;
            }

            .btn-block {
                display: block;
                width: 100%;
            }

            .btn-block + .btn-block {
                margin-top: 0.5rem;
            }

            input[type="submit"].btn-block,
            input[type="reset"].btn-block,
            input[type="button"].btn-block {
                width: 100%;
            }
            a{
                text-decoration: none;
            }

        </style>
        <title>List Exculs</title> 
    </head> 
    <body> 
        <h1>Manage Student Exctracurricular for ${student.fullName}</h1> 
        <input type="hidden" name="si" value="${student.id}"/>

        <table style="width:50%" class="table table-striped"> 
            <thead class="thead-light">
                <tr>
                    <th>Subject</th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach var = "exculs" items = "${exculs}"> 

                <tr> 
                    <td>${exculs.subject}</td> 
                    </td>
                    <td style="text-align: center"> 
                        <a type="button" class="btn btn-warning" href ="update-exculs?id=${exculs.id}&id2=${student.id}"> Update </a>
                    </td> 

                    <td style="text-align: center"> 
                        <a type="button" class="btn btn-danger" href ="delete-exculs?id=${exculs.id}"> Delete </a> 

                    </td> 

                </tr> 

            </c:forEach> 
        </table> 
        </br>
        <a href="insert-exculs?id=${student.id}" class="btn btn-primary">Add new exctracurriculars</a> 

    </body> 

    <br> <a href="list-student" class="badge badge-success">Back to Main Menu</a> 
</html>