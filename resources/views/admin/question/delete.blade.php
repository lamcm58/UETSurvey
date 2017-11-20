<div id="formDelete-{{ $question->id }}" class="modal fade bs-example-modal-md" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Bạn có chắc muốn xóa câu hỏi này?</h4>
            </div>
            <div class="modal-body">
                Câu hỏi sẽ bị xóa khỏi hệ thống, và không thể khôi phục lại.
            </div>
            <div class="modal-footer">
                <form class="form-horizontal form-label-left" action="{{ route('question.delete', $question->id) }}" method="post">
                    {{ csrf_field() }}
                    <button type="submit" class="btn btn-primary">Có</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
                </form>
            </div>
        </div>
    </div>
</div>