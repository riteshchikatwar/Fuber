<%--
  ~ eGov suite of products aim to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) <2015>  eGovernments Foundation
  ~
  ~     The updated version of eGov suite of products as by eGovernments Foundation
  ~     is available at http://www.egovernments.org
  ~
  ~     This program is free software: you can redistribute it and/or modify
  ~     it under the terms of the GNU General Public License as published by
  ~     the Free Software Foundation, either version 3 of the License, or
  ~     any later version.
  ~
  ~     This program is distributed in the hope that it will be useful,
  ~     but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~     GNU General Public License for more details.
  ~
  ~     You should have received a copy of the GNU General Public License
  ~     along with this program. If not, see http://www.gnu.org/licenses/ or
  ~     http://www.gnu.org/licenses/gpl.html .
  ~
  ~     In addition to the terms of the GPL license to be adhered to in using this
  ~     program, the following additional terms are to be complied with:
  ~
  ~         1) All versions of this program, verbatim or modified must carry this
  ~            Legal Notice.
  ~
  ~         2) Any misrepresentation of the origin of the material is prohibited. It
  ~            is required that all modified versions of this material be marked in
  ~            reasonable ways as different from the original version.
  ~
  ~         3) This license does not grant any rights to any user of the program
  ~            with regards to rights under trademark law for use of the trade names
  ~            or trademarks of eGovernments Foundation.
  ~
  ~   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
  --%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		
		<form:form name="cab" role="form" action="create-cab" modelAttribute="cab" id="cab" class="form-horizontal form-groups-bordered" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-12">
					<div class="panel-body custom-form">
						<div class="form-group">
							<label class="col-sm-3 control-label text-right"><spring:message code="label.bootcamp.cabname" /><span class="mandatory"></span></label>
							<div class="col-sm-3 add-margin">
								<form:input id="cabType" path="cabType" class="form-control" type="text" required="required"/>
								<form:errors path="cabType" cssClass="add-margin error-msg" />
							</div>
							<label class="col-sm-2 control-label text-right"><spring:message code="label.bootcamp.cabcontract" /><span class="mandatory"></span></label>
							<div class="col-sm-3 add-margin">
								<form:input id="contactperson" path="contactperson" class="form-control" type="text" required="required"/>
								<form:errors path="contactperson" cssClass="add-margin error-msg" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label text-right"><spring:message code="label.bootcamp.address" /><span class="mandatory"></span></label>
							<div class="col-sm-3 add-margin">
								<form:textarea name="email" path="email" id="address" class="form-control" maxlength="256" required="required"></form:textarea>
								<form:errors path="email" cssClass="add-margin error-msg" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label text-right"><spring:message code="label.bootcamp.longitude" /><span class="mandatory"></span></label>
							<div class="col-sm-3 add-margin">
								<form:input id="longitude" path="longitude" class="form-control" type="text" required="required"/>
								<form:errors path="longitude" cssClass="add-margin error-msg" />
							</div>
							<label class="col-sm-2 control-label text-right"><spring:message code="label.bootcamp.latitude" /><span class="mandatory"></span></label>
							<div class="col-sm-3 add-margin">
								<form:input id="latitude" path="latitude" class="form-control" type="text" required="required"/>
								<form:errors path="latitude" cssClass="add-margin error-msg" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
		<div class="col-sm-12 text-center">
			<form:button type="submit" name="submit" id="save"
				class="btn btn-primary" value="Save">
				<spring:message code="lbl.save" />
			</form:button>
			<form:button type="button" class="btn btn-default" id="button2"
				onclick="window.close();">
				<spring:message code="lbl.close" />
			</form:button>
		</div>
	</div>
		</form:form>  
		<button type='button' class='btn btn-primary' id="btnsearch">
			<spring:message code='lbl.search' />
		</button>