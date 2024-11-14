<?php $__env->startComponent('mail::layout'); ?>
<?php $__env->slot('header'); ?>
        <?php $__env->startComponent('mail::header', ['url' => $details['url']]); ?>
            <?php echo e(config('app.name')); ?>

        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>

# <?php echo e($details['title']); ?>

  
The body of your message. 
   
<?php $__env->startComponent('mail::button', ['url' => $details['url']]); ?>
Click Here
<?php echo $__env->renderComponent(); ?>
   
Thanks,<br>
  <?php $__env->slot('footer'); ?>
        <?php $__env->startComponent('mail::footer'); ?>
        <?php echo e(config('app.name')); ?> 
        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>
<?php echo $__env->renderComponent(); ?><?php /**PATH D:\RMS\RMSAPI\resources\views/emails/myExamMail.blade.php ENDPATH**/ ?>