<?php

return [
    [
        'name' => 'Estimates',
        'flag' => 'estimate.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'estimate.create',
        'parent_flag' => 'estimate.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'estimate.edit',
        'parent_flag' => 'estimate.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'estimate.destroy',
        'parent_flag' => 'estimate.index',
    ],
];
