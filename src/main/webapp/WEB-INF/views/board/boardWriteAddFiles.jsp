<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

	<table>
		<tbody class="files-table">
			<tr>
				<th class="files-th">첨부파일 1</th>
				<td class="td-files input">
					<div class="write-files">
						<input type="file" name="files" class="files">
					</div>
				</td>
				<td class="td-files delete">
					<div class="btn-del" name="file-delete">del</div>
				</td>
			</tr>
			<tr>
				<th class="files-th">첨부파일 2</th>
				<td class="td-files input">
					<div class="write-files">
						<input type="file" name="files" class="files">
					</div>
				</td>
				<td class="td-files delete">
					<div class="btn-del" name="file-delete">del</div>
				</td>
			</tr>
			<tr>
				<th class="files-th">첨부파일 3</th>
				<td class="td-files input">
					<div class="write-files">
						<input type="file" name="files" class="files">
					</div>
				</td>
				<td class="td-files delete">
					<div class="btn-del" name="file-delete">del</div>
				</td>
			</tr>
			<tr>
				<th class="files-th">첨부파일 4</th>
				<td class="td-files input">
					<div class="write-files">
						<input type="file" name="files" class="files">
					</div>
				</td>
				<td class="td-files delete">
					<div class="btn-del" name="file-delete">del</div>
				</td>
			</tr>
			<tr class="files-last-tr">
				<th class="files-th">첨부파일 5</th>
				<td class="td-files input">
					<div class="write-files">
						<input type="file" name="files" class="files">
					</div>
				</td>
				<td class="td-files delete">
					<div class="btn-del" name="file-delete">del</div>
				</td>
			</tr>
			<tbody class="files-attr">
				<tr>
					<th class="files-th">비밀번호</th>
					<td class="td-files pw" colspan="2">
						<div class="write-pw">
							<input type="password" name="password" id="password">
						</div>
					</td>
				</tr>
				<tr class="files-last-tr">
					<th class="files-th">비밀글 설정</th>
					<td class="td-files radiobox" colspan="2">
						<div class="write-radio" style="line-height: 12px;">
							<input type="radio" id="public" checked="checked">
								<label for="public">공개글</label>
							<input type="radio" id="private">
								<label for="private">비밀글</label>
						</div>
					</td>
				</tr>
			</tbody>
		</tbody>
	</table>
