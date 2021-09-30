<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize var="isAdmin" access="hasRole('ADMIN')"/>

<div class="form-group">
    <label class="" for="puppies">Valpkullar</label>
    <small id="puppiesHelp" class="form-text text-muted">Lämna tomt om kullar inte finns</small>
    <input type="text" class="form-control" id="puppies" aria-describedby="puppiesHelp" placeholder="">
</div>