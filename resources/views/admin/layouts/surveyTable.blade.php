<h1>Thống kê môn học</h1>
<table class="table table-striped table-bordered dt-responsive nowrap"
       cellspacing="0" width="100%">
    <thead>
    <tr>
        <th></th>
        <th style="vertical-align: middle; text-align: center">1</th>
        <th style="vertical-align: middle; text-align: center">2</th>
        <th style="vertical-align: middle; text-align: center">3</th>
        <th style="vertical-align: middle; text-align: center">4</th>
        <th style="vertical-align: middle; text-align: center">5</th>
        <th style="vertical-align: middle; text-align: center">Tổng số</th>
        <th style="vertical-align: middle; text-align: center">Điểm TB</th>
    </tr>
    </thead>
    <tbody>
    <?php $i = 0;?>
    @foreach($question_categories as $item)
        <?php $i++;?>
        <tr>
            <td style="background-color: #00A000"><h3>{{ $i }}. {{ $item->question_category }}</h3></td>
            <td colspan="7" style="background-color: #00A000"></td>
        </tr>
        <?php
        $questions = ListProperty::getQuestionByCategory($item->question_category);?>
        @foreach($questions as $question)
            <?php
            $total_1_{$question->id} = 0;
            $total_2_{$question->id} = 0;
            $total_3_{$question->id} = 0;
            $total_4_{$question->id} = 0;
            $total_5_{$question->id} = 0;
            $answer_{$question->id} = [];
            ?>
            @if(count($results)>0)
                <?php
                foreach ($results as $result) {
                    $list_result = unserialize($result->student_answers);
                    if ($question->question_type==1) {
                        if ($list_result["question-{$question->id}"]=="1") {
                            $total_1_{$question->id} += 1;
                        }
                        if ($list_result["question-{$question->id}"]=="2") {
                            $total_2_{$question->id} += 1;
                        }
                        if ($list_result["question-{$question->id}"]=="3") {
                            $total_3_{$question->id} += 1;
                        }
                        if ($list_result["question-{$question->id}"]=="4") {
                            $total_4_{$question->id} += 1;
                        }
                        if ($list_result["question-{$question->id}"]=="5") {
                            $total_5_{$question->id} += 1;
                        }
                    } else {
                        if ($list_result["question-{$question->id}"] != '') {
                            array_push($answer_{$question->id}, $list_result["question-{$question->id}"]);
                        }
                    }
                }
                ?>
            @endif
            @if($question->question_type == 1)
                <tr>
                    <td width="60%">{{ $question->id }}. {{ $question->question_content }}</td>
                    <td align="center">{{ $total_1_{$question->id} }}<?php if ($total_1_{$question->id}!=0) echo '('.number_format($total_1_{$question->id}*100/count($results)).'%)';?></td>
                    <td align="center">{{ $total_2_{$question->id} }}<?php if ($total_2_{$question->id}!=0) echo '('.number_format($total_2_{$question->id}*100/count($results)).'%)';?></td>
                    <td align="center">{{ $total_3_{$question->id} }}<?php if ($total_3_{$question->id}!=0) echo '('.number_format($total_3_{$question->id}*100/count($results)).'%)';?></td>
                    <td align="center">{{ $total_4_{$question->id} }}<?php if ($total_4_{$question->id}!=0) echo '('.number_format($total_4_{$question->id}*100/count($results)).'%)';?></td>
                    <td align="center">{{ $total_5_{$question->id} }}<?php if ($total_5_{$question->id}!=0) echo '('.number_format($total_5_{$question->id}*100/count($results)).'%)';?></td>
                    <td align="center">{{ count($results) }}</td>
                    <?php
                    $sum = 0;
                    if ($total_1_{$question->id}!=0) {
                        $sum += 1*$total_1_{$question->id};
                    }
                    if ($total_2_{$question->id}!=0) {
                        $sum += 2*$total_2_{$question->id};
                    }
                    if ($total_3_{$question->id}!=0) {
                        $sum += 3*$total_3_{$question->id};
                    }
                    if ($total_4_{$question->id}!=0) {
                        $sum += 4*$total_4_{$question->id};
                    }
                    if ($total_5_{$question->id}!=0) {
                        $sum += 5*$total_5_{$question->id};
                    }
                    ?>
                    <td align="center">{{ (count($results)>0)?number_format($sum/count($results), 1):0 }}</td>
                </tr>
            @elseif($question->question_type == 2)
                <tr>
                    <td colspan="8">
                        <div>
                            @if(!empty($answer_{$question->id}))
                                @foreach($answer_{$question->id} as $item)
                                    {!! $item !!}<br/>
                                @endforeach
                            @else
                                {{ 'Không có' }}
                            @endif
                        </div>
                    </td>
                </tr>
            @endif
        @endforeach
    @endforeach
    </tbody>
</table>
<form action="" method="get">
    {{ csrf_field() }}
    <button type="submit" class="btn btn-success">Export to Excel</button>
</form>