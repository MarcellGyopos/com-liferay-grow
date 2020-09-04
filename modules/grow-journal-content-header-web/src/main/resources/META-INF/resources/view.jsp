<%--
/**
* Copyright (c) 2000-present Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>

<%@ include file="/init.jsp" %>

<c:if test="<%= Validator.isNotNull(journalContentHeaderDisplayContext) %>">
	<%
		Header header = journalContentHeaderDisplayContext.getFilledHeader();
	%>
	<div class="journal-title">




		<h1>
			<i class="icon-check"></i>
			<%= header.getTitle()%>
		</h1>
	</div>
	<div class="journal-author-details">
		<a href=""><%= header.getCreator()%></a>,
		<%= header.getCreateDate()%> -
		<%= header.getViewCount()%> Views

	</div>
	<div class="journal-parent-article">
	<p><strong>Parent</strong>: <a href=""><%= header.getParentPage()%></a> </p>
	</div>
</c:if>