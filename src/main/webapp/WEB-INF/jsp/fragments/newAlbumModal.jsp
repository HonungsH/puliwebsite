<%@page pageEncoding="UTF-8" %>
<div class="modal fade" id="newAlbumModal" tabindex="-1" role="dialog" aria-labelledby="newAlbumModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newAlbumModalLabel">Nytt album</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="albumTitleInput" class="col-form-label">Titel:</label>
                        <input type="text" class="form-control" id="albumTitleInput">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Stäng</button>
                <button type="button" class="btn btn-primary" id="newAlbumSubmitButton">Spara</button>
            </div>
        </div>
    </div>
</div>