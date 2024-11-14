<!DOCTYPE html>
<html>
<head>
    <title>Candidate Shortlisting</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        ul {
            padding: 0;
            list-style-type: none;
        }

        li {
            margin-bottom: 10px;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a.button.reject {
            background-color: #F44336;
        }

        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Candidate Shortlisting</h1>
        <p>Dear <?php echo e($projectManagerName); ?>,</p>
        <p>We have shortlisted candidates for the role. Please review the profiles and provide your feedback.</p>

        <?php $__currentLoopData = $candidates; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $candidate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <p>Candidate's:</p>
            <ul>
                <li><strong>Name:</strong> <?php echo e($candidate['Name']); ?></li>
                <li><strong>ResumeLink:</strong> <?php echo e($candidate['ResumeLink']); ?></li>
            </ul>
            <p>
                <a href="<?php echo e($candidate['acceptLink']); ?>" class="button">Accept</a>
                <a href="<?php echo e($candidate['rejectLink']); ?>" class="button reject">Reject</a>
            </p>
            <hr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <p>Best Regards,</p>

        <div class="disclaimer">
            <p>Disclaimer:</p>
            <p>This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
            <p>For any concerns, please reach out to us at tahelpdesk@cipl.org.in.</p>
        </div>
    </div>
</body>
</html>
<?php /**PATH D:\RMS_V2\RMSAPI_V2\resources\views/emails/CandidateShortlistBulk.blade.php ENDPATH**/ ?>