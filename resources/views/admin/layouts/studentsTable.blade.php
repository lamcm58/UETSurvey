<h2>Danh sách sinh viên chưa làm khảo sát</h2>
<h3>{{ $survey->survey_name }} - {{ $subject->course_id }}_{{ ListProperty::formatSubjectCode($subject->subject_class_code) }}</h3>
<table class="table table-striped table-bordered dt-responsive nowrap"
       cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>STT</th>
        <th>Mã SV</th>
        <th>Tên SV</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    @if(count($studentsNotDone)>0)
        <?php $i=0;?>
        @foreach($studentsNotDone as $item)
            <?php $i++;?>
            <tr>
                <td>{{ $i }}</td>
                <td>{{ $item->student_code }}</td>
                <td>{{ $item->full_name }}</td>
                <td>{{ $item->email }}</td>
            </tr>
        @endforeach
    @else
        <td colspan="4">Không có dữ liệu</td>
    @endif
    </tbody>
</table>